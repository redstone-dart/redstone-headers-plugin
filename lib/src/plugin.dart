part of redstone.headers_plugin;

headersPlugin(app.Manager manager) {
  manager.addParameterProvider(Header, (Header metadata, Type type, String handlerName, String paramName, app.Request req, Injector injector) {
    var header = metadata.header != null? metadata.header: paramName;
    return req.headers[header];
  });
}