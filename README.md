# PlanAI - Smart Personal Planner

PlanAI is a Flutter mobile application that acts as a smart AI-powered personal planner. It helps users organize their day automatically based on tasks, energy levels, and personal goals.

## Features

- **AI Smart Daily Scheduler**
  - Input tasks with deadlines and durations
  - AI suggests optimal daily schedule
  - Dynamic re-optimization when tasks change

- **Energy Level-Aware Planning**
  - Daily energy level tracking
  - Task prioritization based on energy levels
  - Smart task distribution throughout the day

- **Task Management**
  - Create and manage tasks
  - Set task priorities
  - Track task completion

## Technical Stack

- **Frontend**: Flutter (iOS and Android)
- **Backend**: Supabase (Authentication & Database)
- **AI Integration**: OpenAI GPT-4 Turbo

## Getting Started

### Prerequisites

- Flutter SDK (>=3.0.0)
- Dart SDK (>=3.0.0)
- Supabase account
- OpenAI API key

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/planai.git
   cd planai
   ```

2. Install dependencies:
   ```bash
   flutter pub get
   ```

3. Configure environment variables:
   Create a `.env` file in the root directory with:
   ```
   SUPABASE_URL=your_supabase_url
   SUPABASE_ANON_KEY=your_supabase_anon_key
   OPENAI_API_KEY=your_openai_api_key
   ```

4. Run the app:
   ```bash
   flutter run
   ```

## Project Structure

```
lib/
  ├── app/                 # App configuration and setup
  ├── features/            # Feature modules
  │   ├── auth/           # Authentication
  │   ├── home/           # Main app screens
  │   ├── tasks/          # Task management
  │   └── schedule/       # Schedule management
  ├── core/               # Core functionality
  │   ├── constants/      # App constants
  │   ├── errors/         # Error handling
  │   └── utils/          # Utility functions
  └── main.dart           # App entry point
```

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add some amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details. 
