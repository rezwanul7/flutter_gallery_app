# flutter_gallery_app

Flutter Image Gallery project.

## Getting Started

This is a simple Flutter application that fetches and displays images from the Unsplash API based on
the time of day. The application will show different images for morning, afternoon, evening, and
night. This dynamic display will provide users with a visually appealing and contextually
appropriate experience whenever they open the app.

## Key Features
**Time-Based Image Display:** The app will display different images for different times of the day (morning, afternoon, evening, night).
**Unsplash API Integration:** Use Unsplash API to fetch high-quality images.
**Responsive UI:** Ensure the UI is responsive and works well on various screen sizes.

## Todo
- [x] Implement Time-Based Display Logic in a helper class.
- [x] Integrate with Unsplash API to fetch images based on predefined time segments (morning, afternoon, evening, night)..
- [ ] Display the appropriate images for the current time segment in a grid layout with infinite scroll.
- [x] Implement a loading indicator while images are being fetched.
- [x] Provide pull to refresh action to manually refresh the images.
- [ ] Allow users to tap on a photo to view it in full-screen mode.
- [ ] Implement a responsive UI that works well on various screen sizes.
- [x] Cache images locally to reduce loading time.
- [ ] Cache API responses to reduce network calls.
- [ ] Implement a flexible app configuration to easily switch between development and production APIs.
- [x] Write unit tests
- [ ] Write integration tests