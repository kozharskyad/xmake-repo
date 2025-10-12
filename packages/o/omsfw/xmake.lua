package('omsfw')
  set_description('ObjFW MicroServices FrameWork')
  set_license('LGPL-3.0')

  add_urls('https://github.com/kozharskyad/omsfw.git')
  add_versions('1.0.0', '93f6b3fe4dcf8157e6cbe526a9285726e86d1d18')

  add_deps('objfw')
  add_includedirs('include')

  on_install(function (package)
    import('package.tools.xmake').install(package)
    os.cp('include', package:installdir())
  end)
