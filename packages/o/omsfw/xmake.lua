package('omsfw')
  set_description('ObjFW MicroServices FrameWork')
  set_license('LGPL-3.0')

  add_urls('https://github.com/kozharskyad/omsfw.git')
  add_versions('1.0.0', '78bec8ebf8e73bd37cbfb861be1ccde54c182812')

  on_install(function (package)
    local configs = {}
    if package:config('static') then
      configs.kind = 'static'
    end
    import('package.tools.xmake').install(package, configs)
  end)
