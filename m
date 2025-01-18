Received: (qmail 11301 invoked by uid 550); 18 Jan 2025 15:46:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 25701 invoked from network); 18 Jan 2025 02:31:39 -0000
Authentication-Results: ext-mx-out011.mykolab.com (amavis);
 dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
 header.d=kolabnow.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kolabnow.com; h=
	content-disposition:content-type:content-type:mime-version
	:message-id:subject:subject:from:from:date:date:received
	:received:received; s=dkim20240523; t=1737167490; x=1738981891;
	 bh=qeAS3c2vIy534bfLUEDgjb1vqMs7sa6usLSRkc/8zis=; b=EhyHgwDCZcPB
	BTUUhV9ooTWXslZoWpEFtomK/4KzmsgDeq+hFp5UOl7ML7nqjrkWu/jHcKz/2Rf5
	tp5mIm42PxRdYSboReMNbLKzZZvNw7B/FkOUp5UKq8VZ8OToiz6SJdbePii07fhN
	AXufeLEtLW87cx4DV/HYWo43XrrfNuy/94gfN7QcuVnTCHlCZFFYCspyAOQFrard
	P5ygZ+nbEVfI5dExtaDuXYrbYaExdykPHgJi3SXT/v56ChpuxFGM/47/+6tWxr/4
	5JI5jgG2ZPRtr0yWayH9mGZk+vR94khpeKgTEh3R3QTGOIth+pMXJMBAKFUatxDc
	2tZiIDWM3A==
X-Virus-Scanned: amavis at mykolab.com
Date: Sat, 18 Jan 2025 03:31:27 +0100
From: Fay Stegerman <flx@obfusk.net>
To: oss-security@lists.openwall.com
Message-ID: <Z4sSf6NqeLUBErxc@nihonium>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Subject: [oss-security] WriteFreely exposes database credentials though insecure file
 permissions

Hi!

Reposting this [1] here with permission:

> Public disclosure of security vulnerability in @writefreely [2]:

> I reported this privately to the project maintainers back in October. There
> has been no further movement from them since I made my initial report, so I
> have decided to make this public so that #writefreely admins can properly
> secure their instances.

> Affects: Any Writefreely instance backed by a #mysql database running on any
> #linux-based platform (other platforms may be affected as well, I have not
> tested).

> Severity as assessed by CVSS v3: Critical (9.3)

> Summary:
> If you use the standard getting started
> instructions(https://writefreely.org/start) and set up to connect to a MySQL
> database with `writefreely config start`, the created config.ini file stores
> the complete database connection configuration, including host, username, and
> password in plain-text in a world-readable file.

> If Writefreely is being run on a shared machine, an attacker with access to
> that machine could use this to gain complete access to the underlying
> database, including user account passwords, private posts, and anything else
> stored by Writefreely, as well as potentially altering or deleting anything
> there.

> PoC:
> 1. Download Writefreely
> 2. Run setup with `writefreely config start`
> 3. Select a MySQL backend and provide a username and password
> 4. Finish setup
> 5. A publicly readable config.ini file is immediately created with all of the
> database credentials in it.

> Impact:
> Tested on Ubuntu 22.04. Probably true at least for all Linux builds. Any
> Writefreely instance running on a shared machine is potentially vulnerable to
> total database compromise.

> Attack vector: Local, an attacker would need console access to the machine
> running the Writefreely instance to gain access to it.
> Attack complexity: Low, they need only check for a readable config.ini file.
> Privileges required: None, the file is world-readable.
> User interaction: None
> Confidentiality: High, an attacker could gain complete access to the MySQL
> database, including contents of any private or unpublished posts.
> Integrity: High, an attacker could gain complete write access to he MySQL
> database and overwrite it with any information they'd like. Additionally, an
> administrator could be totally unaware of any compromise, as this access may
> not leave any traces of its presence.
> Availability: High, an attacker could completely erase or corrupt the backing
> database, bringing the server down, and completely destroying all contents
> that have not been backed up.

> Fix: Administrators of Writefreely instances backed by MySQL databases,
> particularly those on shared machines, should immediately check the
> permissions of their config.ini file and make it readable to the file owner
> only. This file contains sensitive information and should not be public.
> Additionally, any time they use Writefreely's console tools to change their
> server settings, they should recheck their config.ini's permissions, as
> Writefreely's automated tools can reset the file permissions.

- Fay

[1] https://raphus.social/@TV4Fun/113846757112643161
[2] https://github.com/writefreely/writefreely
