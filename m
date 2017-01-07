X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2533" "Saturday" "7" "January" "2017" "05:54:01" "-0600" "Nathan Van Gheem" "nathan.van.gheem@plone.org" "<CAL8hw9EG0ktd-WybU-HhRHEsRho96pdhhiDwvCFYdXJAUrUdmg@mail.gmail.com>" "74" "[oss-security] CVE Request: Plone Multiple Vulnerabilities" nil nil nil "1" "2017010711:54:01" "[oss-security] CVE Request: Plone Multiple Vulnerabilities" (number mark "U       nathan.van.g Jan  7   74/2533  " thread-indent "\"[oss-security] CVE Request: Plone Multiple Vulnerabilities\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23887 invoked by uid 550); 7 Jan 2017 13:15:08 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 28632 invoked from network); 7 Jan 2017 11:54:14 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:date:message-id:subject:to;
        bh=wU77Hwi1yRLk4cixiWSZhE8qyWeCPdozbryWOqMD/RU=;
        b=C9wr0DnRZrLE+e2raOEKNbamhccMszu3Yjld3qbQqwkFk9eP70YqLxaLh0OMALrDe+
         5AK75BpJNBFBpofcfnNkpqYUY0tdgNqwzz3rAOfc+h4qLssNvyZPTTrElNvWMv1n9hZU
         76sbHJ0hRrw+8LYS3u7YUCRBNwkfneyPlb2ioVcUJwMO3y/B6M2QQGF+I1LGxDF40S4d
         +iWMlQhTTV1mNM+YHtI9t0rl4Bj34hmsjKUEYEzhpeXktqrr41sfJrJVanFe2xT6cE6G
         B4mA877FT1b7oKDmAGynyrcH3qyv6trYlU3erilJSo5R47+IcROhZrXG7p6XU4K0Nn1N
         vEAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to;
        bh=wU77Hwi1yRLk4cixiWSZhE8qyWeCPdozbryWOqMD/RU=;
        b=nXI1Wm+r6zi1JrcGTWcbvmOmZkXypr48Qdie9jt+bN2vzq4AG5z4eUvE5ho/FxKyc6
         bxfjzrEIkFtkjOlmiD8AXCo1Rr+B+No6lt++sSz/x+mcCcfh9ZKQEJHcTbILiDF2dtVj
         B7/hzHOwLT/nBGzvGpjNSpdd8uFEFfXX7TasVOjTW/ggBAYjtU64hxElBYg+BwpbQW3k
         jRuUDqtVi/tRdmewrR6U+IA/w5iFTeMVVAYhepFdhrkuxRwt3WkkVdTx3faQB63XE0rK
         9rly6g+Vszi3y77L3rdaSpcitUt9zRHud2aWIqn4YfaHUPr8rGHd5N7sLcXI38TJvhL/
         aDuA==
X-Gm-Message-State: AIkVDXKN68g6DNLXu1Rgd9Ge1D9fGO5bFbvKb6SEdfZ94Uw55xjz/RZag1Kb0jI8FQMaBVEuz/+3FmGkHeSdNQ==
X-Received: by 10.31.153.195 with SMTP id b186mr28894359vke.140.1483790042254;
 Sat, 07 Jan 2017 03:54:02 -0800 (PST)
MIME-Version: 1.0
Sender: vangheem@gmail.com
From: Nathan Van Gheem <nathan.van.gheem@plone.org>
Date: Sat, 7 Jan 2017 05:54:01 -0600
X-Google-Sender-Auth: 2PS9AYjO_EJobt9dP9Q6PIwQ4TY
Message-ID: <CAL8hw9EG0ktd-WybU-HhRHEsRho96pdhhiDwvCFYdXJAUrUdmg@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary=001a1141d5b863d1a705457fca93
Subject: [oss-security] CVE Request: Plone Multiple Vulnerabilities

--001a1141d5b863d1a705457fca93
Content-Type: text/plain; charset=UTF-8

Dear oss-security List,

Please provide CVEs for the following 6 issues:

1) Filesystem information leak
A vulnerability that allows remote attackers to obtain information on files
on the server
Credit: Sebastian Perez
Impact: By using relative paths and guessing locations on a server Plone is
installed on, an attacker can read data from a target server that the
process running plone has permission to read. The attacker needs
administrator privileges on the Plone site to perform this attack.
Reference:
https://plone.org/security/hotfix/20160830/filesystem-information-leak

2) Non-Persistent XSS in Plone forms
z3c.form will currently accept data from GET requests when the form is
supposed to be POST. This allows a user to inject a potential XSS attack
into a form. With certain widgets in Plone admin forms, the input is
expected to be safe and can cause a reflexive XSS attack. Additionally,
there is potential for an attack that will trick a user into saving a
persistent XSS.
Credit: Sebastian Perez
Reference:
https://plone.org/security/hotfix/20160830/non-persistent-xss-in-plone-forms


3) Open Redirection
In multiple places, Plone blindly uses the referer header to redirect a
user to the next page after a particular action. An attacker could utilize
this to draw a user into a redirection attack.
Credit: Sebastian Perez
Reference:
https://plone.org/security/hotfix/20160830/open-redirection-in-plone


4) Non-Persistent XSS
Plone's URL checking infrastructure includes a method for checking if URLs
valid and located in the Plone site. By passing javascript into this
specially crafted url, XSS can be achieved.
Credit: Sebastian Perez
Reference:
https://plone.org/security/hotfix/20160830/non-persistent-xss-in-plone-1


5) Non-Persistent XSS on user form
Plone has unescaped user input in a page template that is open to XSS
Credit: Sebastian Perez
Reference:
https://plone.org/security/hotfix/20160830/non-persistent-xss-in-plone


6) Non-Persistent XSS in Zope2
In multiple places, Zope2's ZMI pages do not properly escape user input
Credit: Sebastian Perez
Reference:
https://plone.org/security/hotfix/20160830/non-persistent-xss-in-zope2



Versions Affected:
4.3.11 and any earlier 4.x version, 5.0.6 and any earlier 5.x version

Code fixes:
https://pypi.python.org/pypi/Products.PloneHotfix20160830

Recommended action:
Install the https://pypi.python.org/pypi/Products.PloneHotfix20160830
package.

--001a1141d5b863d1a705457fca93--
