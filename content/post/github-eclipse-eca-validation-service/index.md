+++
title =  "Eclipse Foundation Contributor Validation Service"
linktitle = "Eclipse Foundation Contributor Validation Service"

author = "Christopher Guindon"
date = "2019-02-25T18:20:46-05:00"

tags = [
    "eclipse",
    "jakartaee"
]
categories = [
    "technology"
]

draft = "false"
+++

In an effort to [provide a more robust solution](https://bugs.eclipse.org/bugs/show_bug.cgi?id=540694) to our Contributor Validation Service on GitHub, we created the [Eclipse ECA Validation](https://github.com/apps/eclipse-eca-validation) Github App that can be installed on any GitHub account, organization or repository.

![Eclipse Foundation Contributor Validation Service](/post/github-eclipse-eca-validation-service/app-landing-page.jpg "Eclipse Foundation Contributor Validation Service")

The goal of this new GitHub App is to make sure that every contributor is covered by the necessary legal agreements in order to contribute to all Eclipse Foundation Projects including [specification projects](https://www.eclipse.org/projects/efsp/#efsp-projects).

For example, all contributors must be covered by the [Eclipse Foundation Contributor Agreement](https://www.eclipse.org/legal/ECA.php) (ECA) and they must include a "Signed-off-by" footer in commit messages. When contributing to an Eclipse Foundation Specification Project, contributors must be covered with version 3.0.0 or greater of the ECA.

![Eclipse Foundation Contributor Validation Service: Feedback example](/post/github-eclipse-eca-validation-service/validation-feedback.jpg "Eclipse Foundation Contributor Validation Service: Feedback example")

We created a GitHub App to improve the following problems:

1. Reduce our maintenance burden by simplifying the installation process.
2. Increase our API rate limit.
3. Create a better experience for users by allowing the App to be installed on non-Eclipse project repositories such as the [Eclipse IoT website](https://github.com/EclipseFdn/iot.eclipse.org) and the [Jakarta EE website](https://github.com/jakartaee/jakartaee.github.io).

Finally, we made some improvements to our “details” page. We added a “revalidate” button to allow Eclipse users to trigger a revalidation without pushing new changes to the pull-request and we added some useful links to allow users to return to GitHub or to sign the [ECA](https://accounts.eclipse.org/user/eca).

![Eclipse Foundation Contributor Validation Service: details page example](/post/github-eclipse-eca-validation-service/details-page.jpg "Eclipse Foundation Contributor Validation Service: details page example")

We are planning to install our new Eclipse ECA Validation Github App to all our Eclipse Projects on GitHub this week and I am hoping that these changes will improve the way our users are contributing via Github. 

If you are using our new Github App and you wish to contribute feedback, please do so on [Bug 540694](https://bugs.eclipse.org/bugs/show_bug.cgi?id=540694) - Github IP validation needs to be more robust. 
