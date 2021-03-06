# ScrivitoSpaceWidget

A Scrivito widget for adding an adjustable amount space between two widgets.
It needs scrivito 1.6.0 at minimum.

## Installation

Add this line to your application's Gemfile:

    gem 'scrivito_space_widget'

Add this line to your application Stylesheet manifest:

    *= require scrivito_space_widget

## Customization

We recommend to use [Scrivito Advanced Editors](https://github.com/Scrivito/scrivito_advanced_editors) which provides nicer controls.

## Localization

The following code represents the default localization for English. Copy it to your `en.yml` and change it if necessary:

```yaml
en:
  scrivito_space_widget:
    thumbnail:
      title: Space
      description: Adds whitespace between two widgets
    details:
      size: Size
      free_size: Free size
```

## Configuration

In an initializer you can define defaults and limits for the free drag mode:

```ruby
ScrivitoSpaceWidget.configure do |config|
  config.max_size = "1000"
  config.min_size = "70"
  config.step_size = "5"
  config.default = "free"
  config.default_free_size = "100px"
end
```
