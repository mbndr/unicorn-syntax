# Test project to preview meson support
project('unicorn', 'vala', 'c')

executable(
    meson.project_name(),

    'src/main.vala',
    'src/plugin.vala',

    dependencies: [
        dependency('glib-2.0')
    ],

    install: true
)
