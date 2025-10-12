package('omsfw')
  set_description('ObjFW MicroServices FrameWork')
  set_license('LGPL-3.0')

  add_urls('https://github.com/kozharskyad/omsfw.git')
  add_versions('1.0.0', '1f15c2357d2f981315d1a39add14055e1e817b5f')

  add_deps('objfw')

  on_install(function (package)
    import('package.tools.xmake').install(package)
    -- os.cp('src/include', package:installdir())
  end)
