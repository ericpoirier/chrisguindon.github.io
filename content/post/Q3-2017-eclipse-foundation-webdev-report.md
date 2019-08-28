---
title: 'Eclipse Foundation Webdev Report [Q3 2017]'
linktitle: 'Eclipse Foundation Webdev Report [Q3 2017]'
author: Christopher Guindon
date: '2017-10-03T10:30:00-04:00'
draft: false
categories:
  - technology
tags:
  - eclipse
  - webdev
---

A few months ago, I created a discussion on [Eclipse Bugzila](https://bugs.eclipse.org/bugs/show_bug.cgi?id=519264) about creating a new blog for the Eclipse Foundation Webdev team. The idea is to raise awareness about what we are currently working on and hopefully, in return, we will get some feedback from the community.

I am new to the blogging world and I am really excited to kick off this new challenge with this report. 

My blog posts will be on the following topics:

1. Quarterly reports on web developpement at the foundation;
2. Maintenance window calendar;
3. Web developpement tips and tricks for Eclipse projects;
4. Discussion on new features.

Here's a top-level list of items that we worked on in Q3 2017:

* [Api.eclipse.org](/post/q3-2017-eclipse-foundation-webdev-report/#api-eclipse-org) 
    * [Bug 516914 - Create public documentation for api.eclipse.org REST Api](/post/q3-2017-eclipse-foundation-webdev-report/#bug-516914-create-public-documentation-for-api-eclipse-org-rest-api) 
    * [Bug 502485 - Activity tab - Error reports from AERI](/post/q3-2017-eclipse-foundation-webdev-report/#bug-502485-activity-tab-error-reports-from-aeri) 
* [Eclipse.org](/post/q3-2017-eclipse-foundation-webdev-report/#eclipse-org) 
    * [Bug 519264 - Create an Eclipse Foundation webdev blog](https://bugs.eclipse.org/bugs/show_bug.cgi?id=519264) 
    * [Infra 2507 - Donate Campaign Plan - Fall 2017](/post/q3-2017-eclipse-foundation-webdev-report/#infra-2507-donate-campaign-plan-fall-2017) 
    * [Bug 521084 - Add epl-2.0 to the website](/post/q3-2017-eclipse-foundation-webdev-report/#bug-521084-add-epl-2-0-to-the-website) 
    * [Bug 261658 - status.eclipse.org](/post/q3-2017-eclipse-foundation-webdev-report/#bug-261658-status-eclipse-org) 
* [Eclipse Marketplace](/post/q3-2017-eclipse-foundation-webdev-report/#marketplace) 
    * [Bug 520850 - Possible adware in marketplace plugin (Eclipse Class Decompiler)](/post/q3-2017-eclipse-foundation-webdev-report/#bug-520850-possible-adware-in-marketplace-plugin-eclipse-class-decompiler) 
    * [Bug 501861 - Selecting a favorite on Eclipse Marketplace is slow](/post/q3-2017-eclipse-foundation-webdev-report/#bug-501861-selecting-a-favorite-on-eclipse-marketplace-is-slow) 
* [Eclipse Project Management Infrastructure (PMI)](/post/q3-2017-eclipse-foundation-webdev-report/#eclipse-project-management-infrastructure-pmi) 
    * [Bug 519694 - Remove solr on projects.eclipse.org](/post/q3-2017-eclipse-foundation-webdev-report/#bug-519694-remove-solr-on-projects-eclipse-org) 
    * [Bug 469321 - Portal Shutdown plan: Transfer all portal functionality to PMI, website](https://bugs.eclipse.org/bugs/show_bug.cgi?id=469321) 
* [Eclipse Working Groups](/post/q3-2017-eclipse-foundation-webdev-report/#eclipse-working-groups) 
    * [Bug 520121 - Need a new conference website for FOSS4G NA 2018](/post/q3-2017-eclipse-foundation-webdev-report/#bug-520121-need-a-new-conference-website-for-foss4g-na-2018) 
    * [Bug 514542 - Create initial website for openPASS](/post/q3-2017-eclipse-foundation-webdev-report/#bug-514542-create-initial-website-for-openpass) 

---

## Api.eclipse.org
### Bug 516914 - Create public documentation for api.eclipse.org REST Api

![Documentation for api.eclipse.org](/uploads/api-eclipse-org.jpg "Documentation for api.eclipse.org")

The documentation for [api.eclipse.org](https://api.eclipse.org) was  all over the place and we needed to [fix](https://bugs.eclipse.org/bugs/show_bug.cgi?id=516914) that.

Some documentation was available on our [wiki page](https://wiki.eclipse.org/Eclipse_USS) but most of it was written in our source code and in a Google document. We decided to resolve this issue by converting our GDOC to static HTML.

After trying out [SWAGGER](https://swagger.io/) and [RAML](https://raml.org/), we decided to use [API Blueprint](https://apiblueprint.org/) to generate our API docs.

API Blueprint is a documentation-oriented web API description language. The API Blueprint is essentially a set of semantic assumptions laid on top of the Markdown syntax used to describe a web API. In addition to the regular Markdown syntax, API Blueprint conforms to the GitHub Flavored Markdown syntax.

If you are interested in this project, our documentation source code is available on [GitHub](https://github.com/chrisguindon/eclipse_api).


### Bug 502485 - Activity tab - Error reports from AERI

![Error reports from AERI](/uploads/accounts-eclipse-org-aeri-reports.jpg "Error reports from AERI")

As of June 2015, with the Eclipse Mars simultaneous release, all Eclipse packages are shipped with the [Automated Error Reporting client](https://wiki.eclipse.org/EPP/Logging) (called AERI). 

Ever since AERI became a part of the Eclipse packages, eclipse.org has seen a steady stream of incoming error reports. Eclipse users currently send around 70,000 reports per week. That is a total of 3 million reports in the past 12 months!

This quarter, we added a new **Error Reports** tab for each user profile on [accounts.eclipse.org](https://accounts.eclipse.org). This tab allows users to review reports they submitted. 

You can try it out now by [log in](https://accounts.eclipse.org) with your Eclipse account. 

---

## Eclipse.org
### Infra 2507 - Donate Campaign Plan - Fall 2017 

![October Donation Campaign](/uploads/donate.jpg "Eclipse Foundation: October Donation Campaign")

On September 29, we launched the [October Donation Campaign](https://ianskerrett.wordpress.com/2017/09/29/annual-donation-campaign-end-user-support-for-the-eclipse-foundation/). The goal is to have over 1000 individual donations to the Eclipse Foundation and help support the overall community.

We implemented a new [donation](https://www.eclipse.org/donate/) page that allows donors to give back using their credit card. I expect this to be useful for user's who can't or won't use Paypal or Bitpay. 

We investigated a few options to incorportate credit card donations and we chose [Stripe](https://www.stripe.com). Regarding it's implementation, we are using the [Drupal Stripe](https://www.drupal.org/project/stripe) module with the latest [Stripe PHP API Library](https://github.com/stripe/stripe-php).

A few days before pushing this to production we noticed that the Drupal Stripe module did not support web proxies. This was a last minute oversight because our testing servers did not require us to use a web proxy to connect to Stripe's API.

I created an issue on drupal.org to [enable web proxy support](https://www.drupal.org/node/2912208) and I am hoping the contribute a patch to fix this very soon.

You can help support the overall Eclipse community by [donating now](https://www.eclipse.org/donate/) to the Eclipse Foundation.


### Bug 521084 - Add epl-2.0 to the website

On August 24, The [Eclipse Foundation announced](https://www.eclipse.org/org/press-release/20170829eplv2.php) that version 2 of the [Eclipse Public License (EPL v2)](https://www.eclipse.org/legal/epl-2.0/) was approved by the Eclipse Foundation Board of Directors and the [Open Source Initiative](https://opensource.org/) (OSI).

I was tasked by [Mike Milinkovich](https://mmilinkov.wordpress.com/2017/04/07/eplv2-a-new-version-of-the-eclipse-public-license/) to format the final [HTML](https://www.eclipse.org/org/documents/epl-2.0/EPL-2.0.html) and [plain text](https://www.eclipse.org/org/documents/epl-2.0/EPL-2.0.txt) document for this new version.

I was really excited to create these digital documents that will be included in many open source projects in the future.

For more information, you can visit the Eclipse Foundation [press release](https://www.eclipse.org/org/press-release/20170829eplv2.php).

### Bug 261658 - status.eclipse.org

![status.eclipse.org](/uploads/status-eclipse-org.jpg "Eclipse Foundation: Status page.")

Denis, our IT Director, built this very nifty [status page](https://status.eclipse.org) and by doing so, won the award for closing the oldest [bug](https://bugs.eclipse.org/bugs/show_bug.cgi?id=261658) this quarter! 

The status page measures performance of various Eclipse.org services from our monitoring agent in Portland, Oregon (many thanks to [OSU Open Source Lab](https://osuosl.org/)). 

If you are experiencing issues with some of our services, please take a look at our [Service Status](https://status.eclipse.org) page for more information.

---

## Marketplace
### Bug 520850 - Possible adware in marketplace plugin (Eclipse Class Decompiler)

It was [brought to my attention](https://bugs.eclipse.org/bugs/show_bug.cgi?id=520850) that a listing on Eclipse Marketplace, called Eclipse Class Decompiler, contained binary code that could be used for adware and could potentially download files to Eclipse workspaces. 

This issue was initially reported in a blog post from a community member. After a bit of testing with [Burp Suite Free Edition](https://portswigger.net/burp/freedownload), I was able to confirm his findings. It was clear that this plugin included code that was not appropriate for the Eclipse users and community.

We removed the listing from Eclipse Marketplace and the Eclipse Foundation strongly suggests any Eclipse user to uninstall this plugin from their workspace.

To remove this plugin, please do the following:

1. Go to Help > About Eclipse > Installation Details
2. Select the feature(s) belonging to the entry
3. Press "Uninstall"
4. Follow the wizard

If you have any questions, please send an email to [EMO](mailto:emo@eclipse-foundation.org).

### Bug 501861 - Selecting a favorite on Eclipse Marketplace is slow

Two years ago, we decided to move Eclipse Marketplace Favorites to [Eclipse USS](https://api.eclipse.org/#eclipse-uss). This move allowed the [Eclipse Marketplace Client (MPC)](https://projects.eclipse.org/projects/technology.packaging.mpc) to leverage the [Eclipse User Storage Service SDK](https://projects.eclipse.org/projects/technology.usssdk) to add/remove user favorites. 

The Eclipse User Storage Service SDK provides an idiomatic Java library for easy use of the USS by Eclipse RCP-based applications. The USS SDK transparently handles the authentication and login capabilities required to use the USS from an Eclipse installation.

Unfortunately, this move created a [regression](https://bugs.eclipse.org/bugs/show_bug.cgi?id=501861) on our website because it required the page to reload each time a favorite was added or removed.

To speed up this action, our team decided to [enable the implicit grant flow](https://bugs.eclipse.org/bugs/show_bug.cgi?id=501933) for the Marketplace API endpoint on [api.eclipse.org](https://api.eclipse.org). 

The implicit grant flow is used to obtain access tokens and is optimized for public clients.  These clients are typically implemented in a browser using a scripting language such as JavaScript.

This update allowed us to create a [jQuery library](https://github.com/EclipseFdn/jquery-eclipsefdn-api) for adding/removing favorites. This new library can add and remove favorites without a page reload each time.

You can test this new change now on the [Eclipse Marketplace](https://marketplace.eclipse.org) website.

---

## Eclipse Project Management Infrastructure (PMI)
### Bug 519694 - Remove solr on projects.eclipse.org

![New project search page](/uploads/projects-eclipse-org-solr.jpg "New project search page")

We've been using [Apache Solr](http://lucene.apache.org/solr/) for a few years now to run the Eclipse Projects search page. The search result page was very quick to load but our users often reported issues regarding the results.

Since Solr was a service that the Eclipse IT team needed to maintain, I considered [removing Solr](https://bugs.eclipse.org/bugs/show_bug.cgi?id=519694) from projects.eclipse.org and replacing it with a simple Drupal view. 

It didn't take long before it was obvious that this new page did a better job at meeting the needs of our community. 

This was a win/win for both the Eclipse IT team and our community. We now have a better search results page for our users and the Eclipse IT team can drop the support of Solr instances for this website.

You can try this new search page now on [projects.eclipse.org](https://projects.eclipse.org).

---

## Eclipse Working Groups
### Bug 520121 - Need a new conference website for FOSS4G NA 2018

![FOSS4G North America 2018](/uploads/foss4g-2018.jpg "FOSS4G North America 2018")

This year's [FOSS4G NA conference](https://2018.foss4g-na.org/) is a collaborative effort involving [OSGeo](http://www.osgeo.org/) and [LocationTech](https://www.locationtech.org/). The conference provides opportunities for the FOSS4G community to learn, explore, share, and collaborate on the latest ideas and information.

The conference is next year from May 14 to the 16 in St. Louis.

The [FOSS4G - North America 2018](https://2018.foss4g-na.org/) website is now available and you can follow [@foss4gna](https://twitter.com/foss4gna) on twitter or the latest news.


### Bug 514542 - Create initial website for openPASS

![OpenPASS Working Group](/uploads/openpass.jpg "OpenPASS Working Group")

The goal of the Eclipse OpenPASS Working Group is to support the development of advanced driver assistance systems (also known as autonomous driving systems) providing tools and adapters for standardized openly-available and vendor-neutral platforms for simulation of traffic scenarios.

Eric Poirier did a great job at building this new website using Drupal and the Eclipse Solstice look and feel.

The [OpenPASS Working Group](http://openpass.eclipse.org/) website is now available!

---

## Summary
I am very proud of the work that my team did this quarter and I am looking forward to new and exciting projects for Q4.

I am still working on a final list of MBO's for Q4 2017 but here's a shortlist of what's on my radar:

1. Migrate our Conference platform to [COD 7.x-2.x](https://www.drupal.org/project/cod). 
2. Build a new conference website for Eclipse France 2018.
3. Pursue the work done so far with [Bug 469321](https://bugs.eclipse.org/bugs/show_bug.cgi?id=469321) - Portal Shutdown plan: Transfer all portal functionality to PMI, website, etc.
4. [Bug 421727](https://bugs.eclipse.org/bugs/show_bug.cgi?id=421727) - Use mysqli extension instead.
5. Archive some EclipseCon websites to static HTML to reduce maintenance.
5. Migrate mailing list subscriptions to accounts.eclipse.org.

