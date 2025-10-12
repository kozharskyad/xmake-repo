package('omsfw')
  set_description('ObjFW MicroServices FrameWork')
  set_license('LGPL-3.0')

  add_urls('https://github.com/kozharskyad/omsfw.git')
  add_versions('1.0.0', '722ae408288d204e29d220107ef246a254dfacd6')

  add_deps('objfw')
  add_includedirs('include')

  on_install(function (package)
    import('package.tools.xmake').install(package)
  end)
