# git-scraper-extractor

`git-scraper-extractor` is a handy tool for your gitscraping repositories.

What is [gitscraping](https://simonwillison.net/2020/Oct/9/git-scraping/)? We'll let Simon Willison, who coined the term, explain:

>The internet is full of interesting data that changes over time. These changes can sometimes be more interesting than the underlying static data—The @nyt_diff Twitter account tracks changes made to New York Times headlines for example, which offers a fascinating insight into that publication’s editorial process.
>
>We already have a great tool for efficiently tracking changes to text over time: Git. And GitHub Actions (and other CI systems) make it easy to create a scraper that runs every few minutes, records the current state of a resource and records changes to that resource over time in the commit history.

`git-scraper-extractor` is a little tool for extracting the multiple versions of a files from your git repository into separate, timestamped files. After your gitscraping repository has been updating a json or csv for awhile, use `git-scraper-extractor` to find each change and output that version into a separate file. Then load those files into the tool of your choice.

## Usage

It's simple. Clone this repo, `cd` into the directory and run:

`$ bundle install`
`$ ./git-scraper-extractor /path/to/repo /path/to/output`