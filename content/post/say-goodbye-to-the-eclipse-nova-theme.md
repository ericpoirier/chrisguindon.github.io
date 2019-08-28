---
title: Say Goodbye to the Eclipse Foundation Nova Theme
linktitle: Say Goodbye to the Eclipse Foundation Nova Theme
author: Christopher Guindon
date: '2017-11-15'
draft: false
categories:
  - technology
tags:
  - eclipse
  - webdev
---

The Eclipse Foundation is planning on removing a few deprecated components from [eclipse.org-common](https://git.eclipse.org/r/plugins/gitiles/www.eclipse.org/eclipse.org-common) in an effort to reduce our code base for [www.eclipse.org](https://www.eclipse.org/). 

We are using [Bug 526827 - Fall clean up of eclipse.org-common](https://bugs.eclipse.org/bugs/show_bug.cgi?id=526827) to track the following tasks:

* [Bug 468336 - Remove support for the Nova theme in eclipse.org-common](https://bugs.eclipse.org/bugs/show_bug.cgi?id=468336)
* [Bug 526824 - Remove yui from eclipse.org-common](https://bugs.eclipse.org/bugs/show_bug.cgi?id=526824)
* [Bug 526825 - Remove Services_JSON from eclipse.org-common](https://bugs.eclipse.org/bugs/show_bug.cgi?id=526825)
* [Bug 526826 - Remove JQuery from eclipse.org-common](https://bugs.eclipse.org/bugs/show_bug.cgi?id=526826)

I believe this "clean up" exercise is our first step towards the execution of my long term plan for migrating our code base to follow recommendations from the [PHP Framework Interop Group](http://www.php-fig.org/). I will be writing about this subject in a future blog post but for now, you can take a look at [Bug 496514 - PHP sites maintained by the EF should follow recommendations from the Framework Interop Group](https://bugs.eclipse.org/bugs/show_bug.cgi?id=496514).

### Bug 468336 - Remove support for the Nova theme in eclipse.org-common

During the summer of 2014, my team was responsible for implementing the redesign of [www.eclipse.org](https://www.eclipse.org/) via [Bug 432342 - Eclipse.org Website Redesign 2014](https://bugs.eclipse.org/bugs/show_bug.cgi?id=432342). We created a new look and feel called **Solstice** and since then, we've been busy migrating all of our web properties.

![Solstice look and feel](/uploads/01-solstice.jpg "Solstice look and feel")

Today, I am happy to announce that it’s finally time to retire the Eclipse Nova theme. We are planning on removing the Nova theme from [eclipse.org-common](https://git.eclipse.org/r/plugins/gitiles/www.eclipse.org/eclipse.org-common) on **December 5th, 2017**.

The Solstice look and feel will become the default theme for all web pages that are currently being served with Nova.

This change will be affecting the following websites: 

* [Celebrating 10 years of Eclipse](http://eclipse.org/10years/)
* [Agent Modeling Platform](http://eclipse.org/amp/)
* [PEL Designer Project](http://eclipse.org/bpel/)
* [BPMN2 Modeler](http://eclipse.org/bpmn2-modeler/)
* [CDO](http://eclipse.org/cdo/)
* [Eclipse CDT (C/C++ Development Tooling)](http://eclipse.org/cdt/)
* [Damos](http://eclipse.org/damos/)
* [EGF](http://eclipse.org/egf/)
* [EMF Refactor](http://eclipse.org/emf-refactor/)
* [Equinox](http://eclipse.org/equinox/)
* [EMF Facet](http://eclipse.org/facet/)
* [FMC - Fundamental Modeling Concepts](http://eclipse.org/fmc/)
* [GEF3D](http://eclipse.org/gef3d/)
* [Gemini](http://eclipse.org/gemini/)
* [Gemini DBAccess](http://eclipse.org/gemini/dbaccess/)
* [Gemini JPA](http://eclipse.org/gemini/jpa/)
* [Henshin](http://eclipse.org/henshin/)
* [Java Workflow Tooling (JWT)](http://eclipse.org/jwt/)
* [Libra](http://eclipse.org/libra/)
* [Maven Integration for WTP](http://eclipse.org/m2e-wtp/)
* [Mangrove - SOA Modeling Framework](http://eclipse.org/mangrove/)
* [Model to Model Transformation (MMT)](http://eclipse.org/mmt/)
* [Graphical Modeling Project (GMP)](http://eclipse.org/modeling/gmp/)
* [Model Development Tools (MDT)](http://eclipse.org/modeling/mdt/)
* [Marketplace Client](http://eclipse.org/mpc/)
* [OSEE: The Open System Engineering Environment](http://eclipse.org/osee/)
* [Pulsar](http://eclipse.org/pulsar/)
* [R4E](http://eclipse.org/r4e/)
* [RT](http://eclipse.org/rt/)
* [Skalli](http://eclipse.org/skalli/)
* [SOA Platform Project](http://eclipse.org/soa/)
* [The Spatiotemporal Epidemiological Modeler (STEM) Project](http://eclipse.org/stem/)
* [Tigerstripe](http://eclipse.org/tigerstripe/)
* [Tycho - Building Eclipse plug-ins with maven](http://eclipse.org/tycho/)
* [UOMo](http://eclipse.org/uomo/)
* [Vex - A Visual Editor for XML](http://eclipse.org/vex/)

Please use [Bug 468336 - Remove support for the Nova theme in eclipse.org-common](https://bugs.eclipse.org/bugs/show_bug.cgi?id=468336) to discuss any concerns regarding this change.
