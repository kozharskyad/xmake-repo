package('omsfw')
  set_description('ObjFW MicroServices FrameWork')
  set_license('LGPL-3.0')

  add_urls('https://github.com/kozharskyad/omsfw.git')
  add_versions('1.0.0', 'da451e3be09bc4fb75d253f27e1a90e1f1369391')

  on_install(function (package)
    local configs = {}
    if package:config('static') then
      configs.kind = 'static'
    end
    import('package.tools.xmake').install(package, configs)
  end)
