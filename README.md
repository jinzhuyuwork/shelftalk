# README

# ShelfTalk

A Ruby on Rails application backed with SQLite database that allows users to manage products on the shelf. Users can comment on products.

## Features
- **Authentication**: Secure signup, login, and JWT-based API access.
- **Authorization**: Only admin users can create or update products. Non-admins have read-only access.
- **Products Management**: Create, read, update products.
- **Comments**: Users can add comments to products

## Testing

- Minitest for unit, and integration tests.
- SimpleCov for test coverage:
```
bin/rails test
open coverage/index.html
```
## Version Control

- The project uses Git for version control.
- Commit changes frequently with descriptive commit messages.

## Getting Started

### Prerequisites

- Ruby 3.x
- Rails 8.x
- SQLite
- Bundler (`gem install bundler`)

### Setup

- **Clone the repository**

```bash
git clone https://github.com/jinzhuyuwork/shelftalk.git
cd shelftalk
```

- **Install Gems**
```
bundle install
```
- **Setup database**
```
rails db:create
rails db:migrate
rails db:seed   # optional
```

- **Run tests**
```
bin/rails test
```

- **Start the server**
```
bin/rails server
```

- Application available at http://localhost:3000/

## Contact

- Email: janet.yu.2010@gmail.com
- GitHub: jinzhuyuwork
