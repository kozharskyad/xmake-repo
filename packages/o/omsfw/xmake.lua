package('omsfw')
  set_description('ObjFW MicroServices FrameWork')
  set_license('LGPL-3.0')

  add_urls('https://github.com/kozharskyad/omsfw.git')
  add_versions('1.0.0', 'c792d22ecb3b7cce4f41c3d4d01b4b3c1fe65018')

  add_deps('objfw')
  add_includedirs('include')

  on_install(function (package)
    import('package.tools.xmake').install(package)
    os.cp('src/include', package:installdir())
  end)
