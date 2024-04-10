Received: (qmail 22064 invoked by uid 550); 10 Apr 2024 17:36:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 22011 invoked from network); 10 Apr 2024 17:36:29 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=netmeister.org;
	s=2024; t=1712770580;
	bh=cD7OxwBSQQMwrrbEBfdOPgnVZkpAbdn/7wsWrffp2U0=;
	h=From:To:Subject:Content-Type:From:To:Subject;
	b=LQB/uw12ek8f2cYtCxf9eG0qYsirLjd3RaBF4x3L6D0m1ngA+W7t86dcaSd35yBk4
	 8XcSZvA80A90pltZl0+nrP7TZQ5owrqi/zI9WmecsMzmoCWAF9zp5CVX9JH0JabdNl
	 h9x6KHJhBpI7RKqwW/wQkxhD+Urk9kMl8PqhwbqY=
Date: Wed, 10 Apr 2024 13:36:20 -0400
From: Jan Schaumann <jschauma@netmeister.org>
To: oss-security@lists.openwall.com
Message-ID: <ZhbOFKB37lyqffh6@netmeister.org>
References: <1e55fc75-1179-4654-befc-ce98eef2a754n@googlegroups.com>
 <752adcda-5d87-4ef4-9227-059adfd11fd4n@googlegroups.com>
 <8d8f6c32-47d7-4816-8c07-14ea8fb4f9a3n@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <8d8f6c32-47d7-4816-8c07-14ea8fb4f9a3n@googlegroups.com>
Subject: [oss-security] NodeJS Command injection via args parameter of child_process.spawn
 without shell option enabled on Windows (CVE-2024-27980)

Rafael Gonzaga <work@rafaelgss.dev> wrote:
 
> The planned security releases are now available. You can read more about 
> the details at 
> https://nodejs.org/en/blog/vulnerability/april-2024-security-releases-2

Trimmed 'links -dump' output:


   Wednesday, April 10, 2024 Security Releases

Security releases available

   Updates are now available for the 18.x, 20.x, 21.x Node.js release lines
   for the following issues.

Command injection via args parameter of child_process.spawn without shell option
enabled on Windows (CVE-2024-27980) - (HIGH)

   Due to the improper handling of batch files in child_process.spawn /
   child_process.spawnSync, a malicious command line argument can inject
   arbitrary commands and achieve code execution even if the shell option is
   not enabled.

   Impact:

     * This vulnerability affects all users in active release lines: 18.x,
       20.x, 21.x

   Thank you, to ryotak for reporting this vulnerability and thank you Ben
   Noordhuis for fixing it.


---

Sending these details could be automated from a simple
procmail filter, if desired.

-Jan
