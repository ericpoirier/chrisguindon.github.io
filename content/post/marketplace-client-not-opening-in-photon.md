---
title: 'Eclipse Marketplace Client, Photon Edition not opening in certain cases'
linktitle: 'Eclipse Marketplace Client, Photon Edition not opening in certain cases'
author: Christopher Guindon
date: '2018-06-29T10:30:00-04:00'
draft: false
categories:
  - technology
tags:
  - eclipse
---

The Eclipse Marketplace Client, Photon edition has a bug where it fails to open in certain cases. If nothing happens when you try to access the Eclipse Marketplace via **"Help > Eclipse Marketplace"**, please update the Marketplace Client plug-in by doing the following:

![Marketplace Client not opening in Photon](/uploads/mpc-update.png "Marketplace Client not opening in Photon")

1. Go to Help > Install New Software
2. Paste the Marketplace Client update site url into the "Work with" field: **http://download.eclipse.org/mpc/photon**
3. Select the "EPP Marketplace Client" checkbox
4. Follow the wizard and restart your Eclipse to finish the installation.

We are working on providing an update to the Eclipse Photon release to distribute the fix through automatic updates and package downloads. In the meantime, please update manually if you are affected by this bug.

If you have any questions about this update process, please send an email to [mpc-dev@eclipse.org](mailto:mpc-dev@eclipse.org). For more technical details, see [bug 536385](https://bugs.eclipse.org/bugs/show_bug.cgi?id=536385).

Blog post co-authored with [Carsten Reckord](https://www.eclipse.org/user/creckord).
