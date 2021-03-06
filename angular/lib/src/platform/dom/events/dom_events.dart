import 'dart:html' show Element, Event;

import 'package:angular/di.dart' show Injectable;

import 'event_manager.dart' show EventManagerPlugin;

@Injectable()
class DomEventsPlugin extends EventManagerPlugin {
  @override
  Function addEventListener(
    covariant Element element,
    String eventName,
    covariant void callback(Event event),
  ) {
    element.addEventListener(eventName, callback);
    return null;
  }

  // This plugin comes last in the list of plugins, it accepts all events.
  @override
  bool supports(String eventName) => true;
}
