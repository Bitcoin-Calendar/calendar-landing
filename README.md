# Bitcoin Calendar

A comprehensive calendar for Bitcoin events, conferences, and network milestones.

## About

Bitcoin Calendar is an open-source project that aims to track and display all important Bitcoin-related events in one place. We focus on:

- Conferences and meetups
- Network updates
- Halvings and other important Bitcoin milestones
- Community events

We also integrate with Nostr to display the latest Bitcoin Calendar updates directly from our Nostr account.

## Features

- **Event Calendar**: Comprehensive tracking of Bitcoin events worldwide
- **Nostr Integration**: Display of recent Nostr posts from our official account 
- **Responsive Design**: Works on desktop and mobile devices
- **Open Source**: Community-driven development

## Development

This website is built with [Hugo](https://gohugo.io/), a fast static site generator, and uses the [Gokarna](https://github.com/526avijitgupta/gokarna) theme.

### Prerequisites

- [Hugo](https://gohugo.io/installation/) (Extended version recommended)
- Git

### Local Development

1. Clone this repository
```
git clone https://github.com/bitcoincalendar/bitcoincalendar.com.git
cd bitcoincalendar.com
```

2. Initialize and update submodules (for the theme)
```
git submodule init
git submodule update
```

3. Start the Hugo development server
```
hugo server -D
```

4. View the site at http://localhost:1313/

## Nostr Integration

We use the [Nostr.band API](https://api.nostr.band) to fetch and display our recent posts from Nostr. The integration:

- Fetches the two most recent posts from our Nostr profile
- Displays them on the homepage with formatting for URLs, mentions, and hashtags
- Falls back gracefully when JavaScript is disabled or errors occur

To configure a different Nostr account, edit the `npub` value in `layouts/shortcodes/nostr-posts.html`.

## Contributing

We welcome contributions! Please see our [contribution guidelines](/CONTRIBUTING.md) for details.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Contact

- Email: contact@bitcoincalendar.com
- Twitter: [@BitcoinCalendar](https://twitter.com/bitcoincalendar)
- GitHub: [github.com/bitcoincalendar](https://github.com/bitcoincalendar)
- Nostr: npub1tcalvjvswjh5rwhr3gywmfjzghthexjpddzvlxre9wxfqz4euqys0309hn 