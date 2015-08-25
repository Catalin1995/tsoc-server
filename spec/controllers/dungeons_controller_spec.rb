require 'rails_helper'

RSpec.describe DungeonsController, type: :controller do
  render_views
  before(:each) {
    @dungeon = Dungeon.create!(title: 'Web Development Mastery')

    @other_skill = Skill.create!(dungeon_id: @dungeon.id, title: 'CSS Tools', maxPoints: 2, description: 'Preprocessors like LESS and SASS help you write more structured and efficient CSS by adding features like variables, functions, and nesting.')

    @skill = Skill.create!(dungeon_id: @dungeon.id, title: 'CSS Tools', maxPoints: 2, description: 'Preprocessors like LESS and SASS help you write more structured and efficient CSS by adding features like variables, functions, and nesting.')
    @link1 = Link.create!(skill_id: @skill.id, label: 'Sass vs. LESS', url: 'http://css-tricks.com/sass-vs-less/')
    Link.create!(skill_id: @skill.id, label: 'LESS', url: 'http://lesscss.org/')
    Link.create!(skill_id: @skill.id, label: 'Sass', url: 'http://sass-lang.com/')
    @link4 = Link.create!(skill_id: @skill.id, label: 'Stylus', url: 'http://learnboost.github.io/stylus/')
    @stat = Statistic.create!(skill_id: @skill.id, title: 'Charisma', value: 2)
    Statistic.create!(skill_id: @skill.id, title: 'Dexterity', value: 1)
    @rank1 = Rank.create!(skill_id: @skill.id, description: 'You are familiar with variables and nesting.')
    @rank2 = Rank.create!(skill_id: @skill.id, description: 'You can use advanced tools like mix-ins and sometimes write your own.')
    @talent = Talent.create!(skill_id: @skill.id, description: 'Nimble')
    @depend = Depende.create!(skill_id: @skill.id, depend_on: @other_skill.id)
  }

  describe 'GET show' do
    it 'if not exist' do
      expect do
        get :show, id: -1, format: :json
      end.to raise_error ActiveRecord::RecordNotFound
    end
    it 'if exist' do
      get :show, id: @dungeon.id, format: :json
      expect(json['code']).to eq(200)
      expect(json['body']['id'].to_i).to eq(@dungeon.id.to_i)
      expect(json['body']['title']).to eq(@dungeon.title)
      expect(json['body']['description']).to eq(nil)
      expect(json['body']['skills'].count).to eq(2)
    end

    it 'if exist and have only title, maxPoints and description' do
      get :show, id: @dungeon.id, format: :json
      expect(json['code']).to eq(200)
      skill = json['body']['skills'][0]
      expect(skill['id']).to eq(@other_skill.id)
      expect(skill['title']).to eq(@other_skill.title)
      expect(skill['description']).to eq(@other_skill.description)
      expect(skill['maxPoints']).to eq(@other_skill.maxPoints)
    end

    it 'if exist and have all features' do
      get :show, id: @dungeon.id, format: :json
      expect(json['code']).to eq(200)
      skill = json['body']['skills'][1]
      expect(skill['id']).to eq(@skill.id)
      expect(skill['title']).to eq(@skill.title)
      expect(skill['description']).to eq(@skill.description)
      expect(skill['maxPoints']).to eq(@skill.maxPoints)
      expect(skill['links'].count).to eq(4)
      expect(skill['links'][0]['label']).to eq(@link1.label)
      expect(skill['links'][0]['url']).to eq(@link1.url)
      expect(skill['links'][3]['label']).to eq(@link4.label)
      expect(skill['links'][3]['url']).to eq(@link4.url)
      expect(skill['stats'].count).to eq(2)
      expect(skill['stats'][0]['title']).to eq(@stat.title)
      expect(skill['stats'][0]['value']).to eq(@stat.value)
      expect(skill['rankDescriptions'].count).to eq(2)
      expect(skill['rankDescriptions'][0]).to eq(@rank1.description)
      expect(skill['rankDescriptions'][1]).to eq(@rank2.description)
      expect(skill['talents'].count).to eq(1)
      expect(skill['talents'][0]).to eq(@talent.description)
      expect(skill['dependsOn'].count).to eq(1)
      expect(skill['dependsOn'][0]).to eq(@depend.depend_on)
      pp skill
    end
  end
end
