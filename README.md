# ConoStorage

[![](https://objectstore-r1nd1001.cnode.jp/v1/b7daff98c2b748dfa6cb8240c8ac7c33/kksg/bg_main-visual.png)](https://objectstore-r1nd1001.cnode.jp/v1/b7daff98c2b748dfa6cb8240c8ac7c33/kksg/bg_main-visual.png)
https://objectstore-r1nd1001.cnode.jp/v1/b7daff98c2b748dfa6cb8240c8ac7c33/kksg/bg_main-visual.png  
OpenStack Swift Client for ConoHa オブジェクトストレージ

## Usage

```ruby
require 'cono_storage'

client = ConoStorage.new(
  tenant_id: 'b7daff9xxxxxxxxxxxxxxxxx',
  username: 1111111,
  password: '^passw0rd$',
  endpoint: 'https://objectstore-r1nd1001.cnode.jp/v1/b7daff9xxxxxxxxxxxxxxxxx',
  web_mode: true # Web公開モード
)

client.put_container('awsome_gifs')# => ConoStorage::Response
client.put_object('awsome_gifs','nyan.gif').url #=> "https://objectstore-...cnode.jp/.../awsome_gifs/nyan.gif"
client.put_object('awsome_gifs', 'wan.gif', hearders: { 'X-Delete-At' => "1170774000" } ) # Custom Headers
client.get_object('awsome_gifs', 'nyan.gif')
client.delete_object('awsome_gifs', 'nyan.gif')
client.delete_container('awsome_gifs').status #=> 204
```

## Documentation

- [オブジェクトストレージ APIリファレンス - ConoHa](https://www.conoha.jp/guide/guide.php?g=52)

## Requirements

Ruby 2.1.0 or later

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cono_storage'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cono_storage

## Contributing

1. Fork it ( https://github.com/kkosuge/cono_storage/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
