# Bitcoin Calendar Project Documentation

## Project Structure

```
bitcal-web/
├── archetypes/          # Template files for creating new content
├── assets/              # CSS, JS, and other assets that are processed by Hugo
├── content/             # Markdown files for website content
│   ├── _index.md        # Homepage content
│   ├── about/           # About page content
│   ├── events/          # Events content
│   ├── roadmap/         # Roadmap page content
│   └── support/         # Support page content
├── data/                # Data files that can be used in templates
├── i18n/                # Internationalization files
├── layouts/             # Custom layouts that override theme defaults
│   └── shortcodes/      # Custom shortcodes
│       ├── center.html  # Shortcode for centered text
│       ├── featured-events.html
│       ├── nostr-posts.html
│       └── nostr-posts-fallback.html
├── public/              # Generated site (created when you run `hugo`)
├── static/              # Static files that are copied directly to the site
│   ├── CNAME           # Custom domain configuration for GitHub Pages
│   └── images/         # Image files
├── themes/              # Theme files
│   └── gokarna/        # Gokarna theme
├── .github/            # GitHub configuration
│   └── workflows/      # GitHub Actions workflows
│       └── hugo-deploy.yml # Deployment workflow
├── .gitmodules         # Git submodules configuration
├── .nojekyll           # File to disable Jekyll processing on GitHub Pages
├── hugo.toml           # Hugo configuration file
└── README.md           # Project README
```

## Local vs Deployed Differences

The difference between your local and deployed versions is likely due to:

1. **Custom Shortcodes**: The `center` shortcode in your local version (`layouts/shortcodes/center.html`) uses different styling than the theme's default (`themes/gokarna/layouts/shortcodes/center.html`). When running locally, your custom version takes precedence, but there might be an issue with the deployment process.

2. **Theme Customization**: The Gokarna theme's `exampleSite` directory contains configuration that may be causing confusion during the build process.

## Cleanup Recommendations

Here are files/directories that can be safely removed:

1. **Remove Theme Example Site**: 
   ```
   rm -rf themes/gokarna/exampleSite
   ```

2. **Remove Redundant Files**:
   ```
   rm -f themes/gokarna/.git
   ```

3. **If not using i18n**:
   ```
   rm -rf i18n
   ```

4. **Clean up any draft or placeholder files in content directory**

## GitHub Actions & Deployment

The current GitHub Actions workflow at `.github/workflows/hugo-deploy.yml` handles:

1. Checking out the repository with submodules
2. Setting up Hugo
3. Removing problematic symbolic links in the theme
4. Building the site with Hugo
5. Deploying to GitHub Pages

### Current Issues & Fixes

1. **Symbolic Links**: The workflow includes a step to remove symbolic links in the theme's example site, which is necessary to prevent build failures.

2. **Shortcode Consistency**: The custom `center.html` shortcode in your repo has different styling than the theme's default. This is why your local version might look different from the deployed version.

3. **Deployment Configuration**: The site is configured to deploy to GitHub Pages with a custom domain of `bitcoin-calendar.org` as specified in the `CNAME` file.

## How to Deploy

1. Make your changes to the website
2. Commit and push to the `main` branch
3. GitHub Actions will automatically build and deploy your site
4. Monitor the workflow in the "Actions" tab of your GitHub repository

## Recommended Improvements

1. **Use the theme as a submodule**: This is already set up correctly.

2. **Standardize shortcodes**: Decide whether to use your custom styling or the theme's default for shortcodes.

3. **Create a development branch**: Make changes in a development branch and only merge to main when ready to deploy.

4. **Add automated testing**: Consider adding HTML validation or link checking to your GitHub Actions workflow.

## Troubleshooting

If you still see differences between local and deployed versions:

1. Compare the generated HTML by running `hugo` locally and examining the files in the `public/` directory.
2. Check the GitHub Actions logs for any warnings or errors.
3. Make sure your custom styles are being applied correctly.
4. Clear browser cache when testing deployed changes. 