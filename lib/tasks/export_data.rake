namespace :export do
  desc "Games"
  task export_to_seed: :environment do
    Game.all.each do |game|
      excluded_keys = ['created_at', 'updated_at', 'id']
      serialized = game.serializable_hash.delete_if{|key,value| excluded_keys.include?(key)}
      puts "Game.create(#{serialized})"
    end
  end
end