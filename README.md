# SnackOverFlow App

## SwiftUI

SwiftUI helps you build great-looking apps across all Apple platforms with the power of Swift — and surprisingly little code. You can bring even better experiences to everyone, 
on any Apple device, using just one set of tools and APIs.
To find out more about [SwiftUI](https://linktodocumentation).

```
private struct BodyView: View {
    @State var isActive = false

    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                VStack(spacing: .kSize16) {
                    Spacer()
                    Image(Icons.app.rawValue)
                    Spacer()
                    FacebookButton(onTap: { })
                    GoogleButton(onTap: { })
                    AppleButton(onTap: { })
                    Divider()
                        .frame(height: 2)
                        .background(.white.opacity(0.5))
                        .padding(.horizontal, 40)

                    EmailButton(onTap: {
                        isActive = true
                    })
                    Spacer().frame(height: geometry.dynamicSize(height: 0.1))
                }.padding(.padding16)
                    .navigationDestination(isPresented: $isActive) {
                    LoginView()
                }
            }
        }
    }
}
```

## Structure and Architecture (MVVM)

![image1](https://upload.wikimedia.org/wikipedia/commons/8/87/MVVMPattern.png)

The viewmodel of MVVM is a value converter, meaning it is responsible for exposing (converting) the data objects from the model in such a way they can be easily 
managed and presented. In this respect, the viewmodel is more model than view, and handles most (if not all) of the view's display logic. The viewmodel may implement a mediator pattern, 
organizing access to the back-end logic around the set of use cases supported by the view.

### Model
Model refers either to a domain model, which represents real state content (an object-oriented approach), or to the data access layer, which represents content (a data-centric approach).
### View
As in the model–view–controller (MVC) and model–view–presenter (MVP) patterns, the view is the structure, layout, and appearance of what a user sees on the screen. 
It displays a representation of the model and receives the user's interaction with the view (mouse clicks, keyboard input, screen tap gestures, etc.), 
and it forwards the handling of these to the view model via the data binding (properties, event callbacks, etc.) that is defined to link the view and view model.
### View Model
The view model is an abstraction of the view exposing public properties and commands. Instead of the controller of the MVC pattern, or the presenter of the MVP pattern,
MVVM has a binder, which automates communication between the view and its bound properties in the view model. The view model has been described as a state of the data in the model.
The main difference between the view model and the Presenter in the MVP pattern is that the presenter has a reference to a view, whereas the view model does not. 
Instead, a view directly binds to properties on the view model to send and receive updates. To function efficiently, this requires a binding technology or generating boilerplate code to do the binding.
