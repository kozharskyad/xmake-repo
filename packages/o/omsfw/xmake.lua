package('omsfw')
  set_description('ObjFW MicroServices FrameWork')
  set_license('LGPL-3.0')

  add_urls('https://github.com/kozharskyad/omsfw.git')
  add_versions('1.0.0', '2315df057cc4669a7a6865edcb991bbca6bfe340')

  add_deps('objfw')

  on_install(function (package)
    import('package.tools.xmake').install(package)
    -- os.cp('src/include', package:installdir())
  end)
