# cordova-plugin-scaler
This plugin controls the scaling of the WebView on iOS.

## Supported Cordova Platforms
* iOS 7 and above

## Methods
The plugin is exposed on the `window` object as `Scaler`.
Although it is in the global scope, it is not available until after the `deviceready` event.
There are two API calls available:

### Scaler.viewportZoom
Zooms the scroll view to the size of the viewport (essentially, this is the same as `<meta name="viewport" content="initial-scale=1">`).

```js
Scaler.viewportZoom({ animate: true })
```

### Scaler.zoom
Allows zooming the scroll view to any arbitrary rectangular area.

```js
Scaler.zoom({ x: 50, y: 50, width: 300, height: 700, animate: false })
```

iOS will not follow the width and height strictly if they do not match the viewport aspect ratio.
