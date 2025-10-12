package('omsfw')
  set_description('ObjFW MicroServices FrameWork')
  set_license('LGPL-3.0')
  set_kind('library')

  add_urls('https://github.com/kozharskyad/omsfw.git')
  add_versions('1.0.0', 'fcb4fbd45e60b766874308b8480f828251195db9')

  add_deps('objfw')

  on_install(function (package)
    import('package.tools.xmake').install(package)
  end)
