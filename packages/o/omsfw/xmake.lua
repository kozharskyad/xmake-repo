package('omsfw')
  set_description('ObjFW MicroServices FrameWork')
  set_license('LGPL-3.0')

  add_urls('https://github.com/kozharskyad/omsfw.git')
  add_versions('1.0.0', 'ed34bbbfd9a41dcf4f854f3008c410e9e5a1cec8')

  on_install(function (package)
    local configs = {}
    if package:config('static') then
      configs.kind = 'static'
    end
    import('package.tools.xmake').install(package, configs)
  end)
