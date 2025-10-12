package('omsfw')
  set_description('ObjFW MicroServices FrameWork')
  set_license('LGPL-3.0')

  add_urls('https://github.com/kozharskyad/omsfw.git')
  add_versions('1.0.0', '5a92840770f9f5c81dccae3859642e6a99639e37')

  add_deps('objfw')

  on_install(function (package)
    import('package.tools.xmake').install(package)
    -- os.cp('src/include', package:installdir())
  end)
