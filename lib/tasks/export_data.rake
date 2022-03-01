namespace :export do
  desc "Memberships"
  task export_to_seed: :environment do
    Membership.all.each do |membership|
      excluded_keys = ['created_at', 'updated_at', 'id']
      serialized = membership.serializable_hash.delete_if{|key,value| excluded_keys.include?(key)}
      puts "Membership.create(#{serialized})"
    end
  end
end