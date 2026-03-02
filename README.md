# Haptic Braille 📳⠃
An iOS application that translates Braille patterns on 2d surface to into custom designed haptic feedback experiences using Core Haptics to teach Braille Letters. 

---

## 📌 Overview

**Haptic Braille** is an accessibility-focused iOS application that explores how tactile feedback and sound can simulate Braille characters on a 3D surface. Braille dots are traditionally felt on physical surfaces with raised patterns that are perceived through touch. In this project, I used advanced haptic engineering to recreate that tactile experience so people can learn Braille on the most accessible surface they carry every day — their phones.

Instead of relying on visual or auditory cues, this app leverages **Core Haptics** to create precise, programmable vibration patterns with sounds that represent Braille dots.

The goal of this project was to:

- Explore accessibility driven innovation  
- Deeply understand Apple’s Core Haptics framework  
- Design custom haptic patterns beyond simple vibration feedback so user can learn Braille Letters  
---

## 🎥 Demo Video

Watch the full technical walkthrough and demo:

[![Watch the Demo](https://img.youtube.com/vi/jIOkX2LggAU/maxresdefault.jpg)](https://youtu.be/jIOkX2LggAU?si=8z-B9fWITQvKvHOd)

In the video, I explain:

- The inspiration behind Haptic Braille  
- Braille-to-haptic mapping logic  
- Core Haptics implementation strategy  
- Live tactile playback  
---

## 🧠 Concept: How Braille Was Mapped to Haptics

Braille characters are formed using a 6-dot cell structure:

1 4  
2 5  
3 6  

Each dot can either be raised (active) or flat (inactive).

In **Haptic Braille**:

- Each active Braille dot is translated into a distinct haptic pulse  
- Timing intervals simulate spatial arrangement  
- Intensity variations represent tactile prominence  
- Sequential pulses represent vertical dot alignment  

Instead of simply vibrating once per dot, I designed structured pulse sequences that reflect:

- Dot position  
- Dot grouping  
- Character rhythm  

This makes tactile interpretation more intuitive and cognitively distinguishable.

---

## 🛠 Technologies Used

### 1️⃣ Swift & SwiftUI

- Swift for core logic  
- SwiftUI for declarative UI development  
- MVVM architecture for clean separation of concerns  
- State-driven updates for haptic triggers  

---

### 2️⃣ Core Haptics (Advanced Implementation)

Core Haptics is the foundation of this app.

This project goes beyond default impact generators and builds fully custom tactile compositions using:

- CHHapticEngine  
- CHHapticPattern  
- CHHapticEvent  
- CHHapticEventParameter  
- CHHapticAdvancedPatternPlayer  

### Custom Haptic Design Strategy

For every character:

1. Convert character → Braille dot array  
2. Identify active dots  
3. Assign structured timing offsets  
4. Modulate intensity per dot  
6. Generate dynamic haptic pattern  
7. Play via advanced pattern player  


Key insight: Small changes in sharpness dramatically affect tactile perception.

---

## 🧩 Haptrix Integration

Haptrix (https://www.haptrix.com) was used to prototype and refine custom haptic sensations.

## 🏗 Architecture Overview

Layers:

- SwiftUI Interface Layer  
- Braille Logic Layer  
- Core Haptics Engine Layer  

---

## ♿ Accessibility First Engineering

Haptic Braille explores:

- Tactile first interfaces  
- Sensory substitution systems  
- Accessibility driven product innovation  
- Human centered system design  

This project demonstrates how smartphones can function as tactile communication devices.

---

## 🧪 Key Learnings

- Core Haptics enables expressive tactile design beyond basic vibration  
- Rhythm influences perception more than raw intensity  
- Accessibility constraints improve architectural clarity  
- Haptic systems require perceptual iteration, not just technical implementation  
---

## 🔮 Future Improvements

- Multi-character continuous playback  
- Apple Watch integration  
- Adaptive tactile calibration  
- Usability validation with visually impaired users  

---

## 👨‍💻 Developer

**Ujval Shah**  
---

⭐ If you found this project interesting, consider starring the repository.
