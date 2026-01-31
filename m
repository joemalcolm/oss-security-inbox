Received: (qmail 27912 invoked by uid 550); 31 Jan 2026 18:51:54 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 1524 invoked from network); 31 Jan 2026 14:06:23 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vanrees.org; s=MBO0001;
	t=1769868371;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=qL3pTnCLu+q9y4Oq5jtfyj8o01mSXy4ma+jlQXZJiGg=;
	b=DxDxTlinaBrV/N4ckN16tk7bSqiYpTmfDZtINylKXZt6NIj+8gEv/UnnDVJI7BAMAmg7Bm
	TJ2i+6zQ5PqFeUU4RNMoetnou24kLzGP41uYZsvns4qX2ZcZqBxlXjONa+UIc/QZcMZw/q
	UZ46AVQEHCEnjKY/B8bn2DG99T0JT2Pw3pgDRaKwLygTWdAyfFYxhXVvn04nHI7OSF+zbY
	UOeSYwF+JSn3zs4eVEUHt8s6zvY+z8m190dCxX7ezhZQF936nZa+NAVu9AheUv3pOIVSp+
	e3hbQ3DMCjNE4WZt4uzqQL6IK+1O/SEIuunidY8IHITMVVXQHMd97rOaZavIPg==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of maurits@vanrees.org designates 2001:67c:2050:b231:465::1 as permitted sender) smtp.mailfrom=maurits@vanrees.org
Message-ID: <2ba0f531-c6a7-45eb-a665-685049d915d3@vanrees.org>
Date: Sat, 31 Jan 2026 15:06:10 +0100
MIME-Version: 1.0
Content-Language: en-GB
To: oss-security@lists.openwall.com
From: Maurits van Rees <maurits@vanrees.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Security incident on plone GitHub org with force pushes

Hi security list,

Let me start with two key takeaways for everyone:
* Regularly check your personal access tokens or other security keys to 
see if new ones have been added that you do not recognize. This may be a 
sign that your account has been compromised.
* Disable force pushes to your default git branches and maintenance 
branches. In a GitHub org you may be able to do this for a whole 
organization with rulesets, otherwise you can do it per repository.

On January 7, there was a security incident in the plone organization on 
gitHub, where someone force pushed malicious code to several 
repositories. Most of this was discovered before it could do damage, but 
some was left undiscovered until later. We reported this to the Plone 
community forum, with an important update after further discoveries. See 
this thread:
https://community.plone.org/t/plone-security-advisory-20260116-attempted-code-insertions-into-github-pull-requests/22770
In this mail I will try to get the main points across from what we have 
learned.

Plone is an open source content management system written in Python and 
JavaScript/NodeJS. We are quite an open community, and lots of people 
can contribute to the core. We have been around for a long time. This 
means there are also people who have not contributed in years, but still 
have write access to the code. This is something we have been planning 
to clean up, without stepping on too many toes.

In this case, someone who used to contribute, did some force pushes to 
several branches of repositories on GitHub. We discovered this because 
some pull requests had an automatic note by GitHub saying a force push 
was done, and then we saw obfuscated Javascript code that we assume to 
be malicious.
We have no reason to distrust the user, so we assume his account was, at 
least partially, taken over by an attacker. We informed him, and he has 
been working with us to get to the bottom of this, supplying info that 
he got from people at GitHub support who have been researching this. So 
thanks!

 From GitHub we heard that they recorded malicious push events to five 
repositories: plone/volto, plone/mockup, plone/plone.app.mosaic, 
plone/critical-css-cli, plone/plonetheme.barceloneta.
One of these was a successful attempt on a master branch. It is this 
commit, marked as being from 18 December, but that date would be wrong:
https://github.com/plone/plone.app.mosaic/commit/3c94aae73ad37b366c47e899c241306df60b686d
This is a standard after-release commit updating the version, but now it 
contains a change to `prettier.config.js`. Locally the diff seemed only 
whitespace, but the malicious code is hidden after a lot of spaces, 
disappearing to the right of my terminal (this might be a git setting I 
have). On GitHub you can see it after clicking an extra button.  I have 
committed a fix on master, removing the code.

If you suspect something like this may have happened at a project you 
feel responsible for, you can look at all branches, sorted by last 
updated date, in this case:
https://github.com/plone/plone.app.mosaic/branches/all
There I recognized the image of the affected user as being the last one 
to edit the master branch, and the last updated date did not match the 
date that was in the commit.
You could also use the GitHub API, and look for PushEvents, like here:
https://api.github.com/repos/plone/plone.app.mosaic/events


For clarity, why was this attack done by force pushes? Because they are 
harder to notice. The user could have done a normal push, but that would 
have been easier to look for.

Anyway, for most repos we already had protection in place, so that the 
main or master branch could not be force pushed to. For the plone gitHub 
organisation, we have since taken extra precautions organization-wide, 
using rulesets. This is not available for all organisations, so you may 
need to do this per repository.

There is now a ruleset in the settings, with two branch rules that are 
selected by default if you create a new rule:  "Restrict deletions" and 
"Block force pushes". I have activated this ruleset on the default 
branch (which would usually be main or master) and on '*.x', which 
matches how we call our maintenance branches.

A second ruleset is one for tags. A new ruleset for tags by default has 
the same rules selected: "restrict deletions" and "block force pushes". 
As extra for tags we have enabled "Restrict updates", so a malicious 
user cannot update a tag to a different commit. But as far as we know, 
this was not attempted.

Finally, some words about the contents of the attack. It targets 
javascript files at the root of the repository, which are usually called 
when building the software. So it seems to target not so much end users 
of the software, but developers.  I will share some info that the 
affected user sent us after his communication with GitHub:

"The malicious code is sophisticated. If the software it targets is 
built, it activates, detaches, and hides within active processes. It 
ensures persistence through shell startup scripts, downloads an RCE 
exploit, gains control over the server, and exfiltrates credentials, 
including API keys, browser profiles and crypto wallets.
In my case, the attackers exploited an active session to plant a 
Personal Access Token (PAT) and waited two months before performing 
these force-pushes."

So, be careful when you have multiple people who can commit to your 
software, and you see unexpected force pushes.

Greetings,

Maurits van Rees
Plone/Zope Security Team
Plone Release Manager

