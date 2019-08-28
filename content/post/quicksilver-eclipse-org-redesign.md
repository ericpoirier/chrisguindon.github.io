---
title: 'Quicksilver: eclipse.org new look and feel'
linktitle: 'Quicksilver: eclipse.org new look and feel'
author: Christopher Guindon
date: '2018-04-10T10:30:00-04:00'
draft: false
categories:
  - eclipse
  - webdev
  - redesign
  - quicksilver
tags:
  - eclipse
  - webdev
---
![Eclipse.org new home page](/uploads/eclipse-org-homepage.jpg "Eclipse.org new home page")

I am pleased to announce a new look and feel for [www.eclipse.org](https://www.eclipse.org), codenamed **Quicksilver**, and a new logo for the Eclipse Foundation which Mike Milinkovich, the Executive Director of the Eclipse Foundation, has [blogged](https://mmilinkov.wordpress.com/2018/04/10/eclipse-foundation-new-logo/) about.

The main goal of the redesign is to highlight the Eclipse Foundation as more than just the IDE it started with. We want the site to reflect the fact that the Foundation now represents a collection of working groups, open source projects, vendors and individual committers all collaborating in the same space to create innovative technologies. 

We hope we have the balance right, making sure it remains easy for the millions of developers who visit our site to get to their desired downloads easily and quickly. 

A Quicksilver prototype is available now via our [public staging server](https://staging.eclipse.org). This server is protected with basic access authentication. The username is **testuser** and **plaintext** is the password.

The main focus of this redesign was on the following pages:

* [Eclipse Foundation Homepage](https://staging.eclipse.org)
* [Eclipse Working Groups](https://staging.eclipse.org/org/workinggroups/)
* [Business Value](https://staging.eclipse.org/org/value/)
* [Content pages](https://staging.eclipse.org/org/)

You can participate and contribute to this project by submitting feedback on [Bug 533394 - Quicksilver: eclipse.org new look and feel](https://bugs.eclipse.org/bugs/show_bug.cgi?id=533394). 

Quicksilver is going to be available on **April 19th, 2018** for [www.eclipse.org](https://www.eclipse.org) only. We will continue the rollout across our broader web properties over the coming weeks.

Technology-wise, Quicksilver is an extension of Solstice. Since this is not a complete overhaul of our existing codebase, we’re expecting the transition from Solstice to Quicksilver to be fairly straightforward. Website maintainers for Eclipse projects and working groups should know that the colors are going to change but we don’t expect to break any existing Eclipse project websites.

## Future plans

We plan on changing our look and feel gradually. The following tasks are going to get done after the initial release of Quicksilver:

* Drupal themes for [Eclipse Marketplace](https://marketplace.eclipse.org), [Eclipse PMI](https://projects.eclipse.org) and [Eclipse User Profiles](https://accounts.eclipse.org)
* New Hugo theme for static websites
* Mediawiki theme for [Eclipsepedia](https://wiki.eclipse.org)
* New theme for [Planet Eclipse](http://planeteclipse.org/planet/)
* Updated header and footer for [Eclipse Bugzilla](https://bugs.eclipse.org/bugs/), [Gerrit](https://git.eclipse.org/r/), [Eclipse CI](https://ci.eclipse.org/) and [Eclipse Git repositories](https://git.eclipse.org/c/)
* New FUDforum theme for the [Eclipse Community Forums](https://eclipse.org/forums/).

A lot of work needs to get done before this becomes available but I am very proud of the work we did so far for this project. 

A huge thank you to Eric Poirier, Stephanie Swart, Thabang Mashologu, and the entire Eclipse Foundation staff!
