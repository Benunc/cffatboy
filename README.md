# CF Fatboy Static Site

This is a static site export of the Cystic Fibrosis Fatboy blog. It contains blog posts and resources related to living with Cystic Fibrosis.

## Local Development

To run this site locally:

```bash
# Using Python's built-in HTTP server
python3 -m http.server 8000

# Or using Node.js http-server
npm install -g http-server
http-server -p 8000 -c-1
```

## Site Cleanup

The site has been cleaned up to remove unnecessary elements:

```bash
# Run the master cleanup script
chmod +x cleanup_site.sh
./cleanup_site.sh
```

This script performs the following cleanup tasks:
1. Removes eepurl.com links/buttons
2. Removes search forms from sidebar
3. Removes search widget divs
4. Removes mobile search forms
5. Removes search buttons from mobile menu

## Deploying to GitHub Pages

1. Create a new GitHub repository
2. Push all these files to the repository
3. Go to Settings > Pages
4. Under "Source", select "Deploy from a branch"
5. Choose your main branch and save
6. Your site will be published at https://yourusername.github.io/reponame/

## Notes

- The `.nojekyll` file ensures GitHub doesn't process the site with Jekyll
- The site structure includes year/month folders for posts (e.g., `/2014/03/and-were-back/`)
- All links point to original domain, but work relatively on GitHub Pages 