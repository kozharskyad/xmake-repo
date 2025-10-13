package('omsfw')
  set_description('ObjFW MicroServices FrameWork')
  set_license('LGPL-3.0')
  set_kind('library')

  add_urls('https://github.com/kozharskyad/omsfw.git')
  add_versions('1.0.0', '6e21b6786a659dc7cc7164a093aa2b16c29c4069')

  add_deps('objfw')

  on_install(function (package)
    import('package.tools.xmake').install(package)
  end)
