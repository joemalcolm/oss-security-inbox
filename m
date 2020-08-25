X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["858" "Tuesday" "25" "August" "2020" "17:36:21" "+0200" "Matthieu Herrb" "matthieu@herrb.eu" "<20200825153621.GI30064@timmy>" "36" "[oss-security] X.Org libX11 security advisory: August 25, 2020" nil nil nil "8" "2020082515:36:21" "[oss-security] X.Org libX11 security advisory: August 25, 2020" (number mark "U       matthieu@her Aug 25   36/858   " thread-indent "\"[oss-security] X.Org libX11 security advisory: August 25, 2020\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] X.Org libX11 security advisory: August 25, 2020" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 24490 invoked by uid 550); 25 Aug 2020 15:53:44 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 18029 invoked from network); 25 Aug 2020 15:36:35 -0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=herrb.eu; h=date:from:to
	:subject:message-id:mime-version:content-type; s=20180121; bh=Os
	3PSzzmtx0PYSgi4LduO9ER6Oc=; b=jx3qC+WO3KdsfQnDhCdZwaID2EPB1wkVFJ
	YI8c45p9KbZVVLEgPYhoKj/yPgK6aEjAg3Cum7cMsBnzgzCYhtblnPBrOn4bMnNF
	+LGn5X8LNyLpIT28kezAXzTW7u0Gmpv1GkzzTs5+5Z+XtdTEZtFRQkYjWlHfzcc5
	nE4DgAsd8=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=herrb.eu; h=date:from:to
	:subject:message-id:mime-version:content-type; q=dns; s=20180121; b=
	zSf0KNQeCwq0dyOFqmZztjuDPU/EAy7XlytgGbWuAlRCJu4ZLWDA3nWVru8R6UTV
	CwXyUYPWbgwOHJtNh+fEJI6ueq9Ex3TPU/LJ4wUsWvAjrGMJPnEJz/eoSN5LqDAW
	BYuM+YIu8qpCKXprlRz7z0WM0zLFDCQqX/XO4mMY16I=
Date: Tue, 25 Aug 2020 17:36:21 +0200
From: Matthieu Herrb <matthieu@herrb.eu>
To: oss-security@lists.openwall.com
Message-ID: <20200825153621.GI30064@timmy>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
Subject: [oss-security] X.Org libX11 security advisory: August 25, 2020


Double free in libX11 locale handling code
==========================================

CVE-2020-14363

There is an integer overflow and a double free vulnerability in the way
LibX11 handles locales. The integer overflow is a necessary precursor to
the double free.

Patches
-------

A Patch for this issue has been committed to the libX11 git repository.
libX11 1.6.12 will be released shortly and will include this patch.

https://gitlab.freedesktop.org/xorg/lib/libx11


commit acdaaadcb3d85c61fd43669fc5dddf0f8c3f911d (HEAD -> master)

    Fix an integer overflow in init_om()
    
    CVE-2020-14363
    
    This can lead to a double free later, as reported by Jayden Rivers.
    

Thanks
------

X.Org thanks Jayden Rivers for reporting this issue to our security
team and assisting them in understanding them and providing fixes.

-- 
Matthieu Herrb
