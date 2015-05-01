X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1646" "Saturday" "2" "May" "2015" "10:51:24" "+1200" "Matthew Daley" "mattd@bugfuzz.com" "<CAD3Canf5OopQ-TNrP7GWfw1TbOVyOQzsqTn0EDsAFApKUCo7mA@mail.gmail.com>" "35" "[oss-security] CVE request / Advisory: Slideshow (Wordpress plugin) - Wordpress option value disclosure" nil nil nil "5" "2015050122:51:24" "[oss-security] CVE request / Advisory: Slideshow (Wordpress plugin) - Wordpress option value disclosure" (number mark "        mattd@bugfuz May  2   35/1646  " thread-indent "\"[oss-security] CVE request / Advisory: Slideshow (Wordpress plugin) - Wordpress option value disclosure\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 12120 invoked by uid 550); 1 May 2015 22:51:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 12102 invoked from network); 1 May 2015 22:51:35 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:date:message-id:subject:from:to:cc
         :content-type;
        bh=wQu+NnL4wqeV4LRbU9q0N3/pZ7OFxqHuCJdj6ML+/FE=;
        b=VMyEhwAstRtwTew21Al9qjfX1ghcqhpZw3LK5NN0YKdWhK2Yi7YXbrjqTjfEew/7bT
         mvIWdaXPA8v9bxVWd7ySt91tPZTH0/QHX3fCtQGjcv0DvurY9ZpIi+ZHgJwfW+pe7rI7
         2RnVR9IE6Ty/iF4xuoOijcczgMEiDV7NgNvAQd1KbTTHgoyP4hjIvJimc2oWKvmE3dFf
         JsioH3u2gOAEGptKevK6653eUusnSaHMVQotZCGHv+qokozrFub8bRDDxbiyZERsgNx5
         yHoe6OsZ6b+B/dwTHcmewpLGz794qgt6PAhHURw1rOdAWlwbjzocE7iH5cvoNLumvJHI
         aP8g==
X-Gm-Message-State: ALoCoQnN5nJpwRh20kJLrcv7Qxu+uViGs88bVMAMUmsTNfY2y/4a0V80Hh1gfYDLgiv3LyVbgBcz
MIME-Version: 1.0
X-Received: by 10.194.23.66 with SMTP id k2mr21250740wjf.18.1430520684444;
 Fri, 01 May 2015 15:51:24 -0700 (PDT)
Message-ID: <CAD3Canf5OopQ-TNrP7GWfw1TbOVyOQzsqTn0EDsAFApKUCo7mA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Cc: cve-assign@mitre.org
Date: Sat, 2 May 2015 10:51:24 +1200
From: Matthew Daley <mattd@bugfuzz.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE request / Advisory: Slideshow (Wordpress plugin) - Wordpress
 option value disclosure
To: oss-security@lists.openwall.com

I'd like to request a CVE ID for this issue. This is the first such
request; this message serves as an advisory as well.

Affected software: Slideshow (Wordpress plugin)
Affected versions: 2.2.8 - 2.2.21
Website: https://wordpress.org/plugins/slideshow-jquery-image-gallery/
Reported by: Matthew Daley

Description:

The SlideshowPluginSlideshowStylesheet::loadStylesheetByAJAX function,
accessible by unauthenticated users as an AJAX action, can be abused
to force the disclosure of arbitrary Wordpress option values.

The function is intended to return the content of a user-specified
slideshow stylesheet, whether it be an administrator-created custom
one or a default one included with the plugin. Custom stylesheets are
stored as Wordpress option values, so the function first looks for an
option matching the user-specified stylesheet name. If a matching
option is found, its value is returned as the stylesheet content.

However, the function does not validate the user-specified stylesheet
name before this option lookup is performed (apart from sanitizing
certain characters using the filter_input function). Hence, it is
possible to specify any option name in place of an actual custom
stylesheet name, regardless of whether the option is for the Slideshow
plugin, another plugin, a theme, or Wordpress itself. Doing so will
cause the function to retrieve the value of the user-specified option
and output it to the user.

Fixed version: 2.2.22
Fix: https://github.com/Boonstra/Slideshow/commit/cac505e593cbe70a4d8af5b639f5385d4cc7aa04
Changelog: https://wordpress.org/plugins/slideshow-jquery-image-gallery/changelog/

- Matthew Daley
