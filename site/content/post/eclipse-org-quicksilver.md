+++
author = "Christopher Guindon"
date = "2018-04-09"
linktitle = "Quicksilver: eclipse.org new look and feel"
title =  "Quicksilver: eclipse.org new look and feel"
tags = [
    "eclipse",
    "webdev"
]
categories = [
    "technology"
]
+++
![Eclipse.org new home page](/images/05-quicksilver/eclipse-org-homepage.jpg "Eclipse.org new home page")

I am happy to announce a new look and feel for [www.eclipse.org](https://www.eclipse.org), codenamed **Quicksilver**.

The main goal of the redesign is to highlight the Eclipse Foundation as more than just the IDE it started with. It’s a collection of working groups, open source projects, vendors and individual committers all collaborating in the same space to create innovative technologies.

A Quicksilver prototype is available via our [public staging server](https://staging.eclipse.org). This server is protected with basic access authentication. The username is **testuser** and **plaintext** is the password.

The main focus of this redesign was on the following pages:

* [Eclipse Foundation Homepage](https://staging.eclipse.org)
* [Eclipse Working Groups](https://staging.eclipse.org/org/workinggroups/)
* [Business Value](https://staging.eclipse.org/org/value/)
* [Content pages](https://staging.eclipse.org/org/)

You can participate and contribute to this project by submitted feedback on [Bug 533394 - Quicksilver: eclipse.org new look and feel](https://bugs.eclipse.org/bugs/show_bug.cgi?id=533394). 

Quicksilver is going to be available on **April 19th, 2018** for [www.eclipse.org](https://www.eclipse.org) only. 

Technology-wise, Quicksilver is an extension of Solstice. Since this is not a complete overhaul of our existing website, the transition from Solstice to Quicksilver should be fairly easy. Website maintainers should know that the colors are going to change but we don’t expect to break any existing Eclipse project websites.

## Future plans

We plan on changing our look and feel gradually. Given the short timeline of this project, we did not include a requirement for building a Quicksilver Drupal theme for April 19th, 2018.

The following tasks are going to get done after the initial release of Quicksilver:

* Drupal themes for [Eclipse Marketplace](https://marketplace.eclipse.org), [Eclipse PMI](https://projects.eclipse.org.) and [Eclipse User Profiles](https://accounts.eclipse.org)
* New Hugo theme for static websites
* Mediawiki theme for [Eclipsepedia](https://wiki.eclipse.org)
* New theme for [Planet Eclipse](https://planeteclipse.org)
* Updated header and footer for [Eclipse Bugzilla](https://bugs.eclipse.org/bugs/), [Gerrit](https://git.eclipse.org/r/), [Eclipse CI](https://ci.eclipse.org/) and [Eclipse Git repositories](https://git.eclipse.org/c/)
* New FUDforum theme for the [Eclipse Community Forums](https://eclipse.org/forums/).

A lot of work needs to get done before this becomes available but I am very proud of the work we did so far for this project. 

A huge thank you to Eric Poirier, Stephanie Swart, Thabang Mashologu, and the entire Eclipse Foundation staff!
