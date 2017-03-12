X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["9006" "Sunday" "12" "March" "2017" "20:34:23" "+0000" "Craig Small" "csmall@debian.org" "<CALy8Cw58FYZobXa7G5MGoPbfJ4T9w1XHu3BYL1sGeBM-voBSkA@mail.gmail.com>" "352" "[oss-security] Fwd: [scr305104] wordpress before 4.7.3" nil nil nil "3" "2017031220:34:23" "[oss-security] Fwd: [scr305104] wordpress before 4.7.3" (number mark "U       csmall@debia Mar 12  352/9006  " thread-indent "\"[oss-security] Fwd: [scr305104] wordpress before 4.7.3\"\n") "<068d48a6cb3e4d18962514f233b7ef94@imshyb02.MITRE.ORG>" ("<068d48a6cb3e4d18962514f233b7ef94@imshyb02.MITRE.ORG>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1920 invoked by uid 550); 12 Mar 2017 21:12:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 15764 invoked from network); 12 Mar 2017 20:34:46 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=Dz25k4vz0FTdycbWSpb4vRJpDbhnlpdI5hlIL3v0MBs=;
        b=SOJMfKPblOuZY+8k7Wz/MGeKUJntQWs8jM0+p27pXJm52Immw/Yey80hRUrDU66dya
         C3SdA5W6TmK7wWXix7gPE1726pdAwYTC/GdliOa1GRZWGQWnNCX4B2hYTx2YbofJMjD2
         Vg9ZmY7n6wAO2EpOmvjc7hmRJdoA3v7hqe/JFMSInJBaQPqSSpoSisHQD3OWnd08qbjl
         EJ4z/fKjQEi2ByuExcF44PueGswzOFjqILAov1yCr93iErUJW4E0Qs9pNAceNBlM5o1B
         hWPzIlfTr9heDICsamlIJ3P06u2Lqt/DUNPDRIa2d42TdBEZNqWk3PqKRGZTopVaRJXf
         /83Q==
X-Gm-Message-State: AMke39mhToWSGT1C8/GxRVABI1as6w/8BkCQxp3le/tML0InZCob1O9ylQsGrgi/oMK1pg==
X-Received: by 10.25.219.18 with SMTP id s18mr7055888lfg.174.1489350874923;
        Sun, 12 Mar 2017 13:34:34 -0700 (PDT)
X-Received: by 10.25.216.28 with SMTP id p28mr7612934lfg.164.1489350874416;
 Sun, 12 Mar 2017 13:34:34 -0700 (PDT)
MIME-Version: 1.0
References: <068d48a6cb3e4d18962514f233b7ef94@imshyb02.MITRE.ORG>
In-Reply-To: <068d48a6cb3e4d18962514f233b7ef94@imshyb02.MITRE.ORG>
From: Craig Small <csmall@debian.org>
Date: Sun, 12 Mar 2017 20:34:23 +0000
X-Gmail-Original-Message-ID: <CALy8Cw58FYZobXa7G5MGoPbfJ4T9w1XHu3BYL1sGeBM-voBSkA@mail.gmail.com>
Message-ID: <CALy8Cw58FYZobXa7G5MGoPbfJ4T9w1XHu3BYL1sGeBM-voBSkA@mail.gmail.com>
To: oss-security <oss-security@lists.openwall.com>
Content-Type: multipart/alternative; boundary=001a1140eab4d0e2cd054a8e856d
Subject: [oss-security] Fwd: [scr305104] wordpress before 4.7.3

--001a1140eab4d0e2cd054a8e856d
Content-Type: text/plain; charset=UTF-8

FYI, The 6 wordpress CVE ids from Mitre.

 - Craig

---------- Forwarded message ---------
From: <cve-request@mitre.org>
Date: Sun, Mar 12, 2017 at 11:32 AM
Subject: Re: [scr305104] wordpress before 4.7.3
To: <csmall@debian.org>
Cc: <cve-request@mitre.org>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> [Suggested description]
> In WordPress before 4.7.3,
> there is
> authenticated Cross-Site Scripting (XSS) via Media File Metadata. This is
demonstrated by both
> (1) mishandling of
> the playlist shortcode in the wp_playlist_shortcode function in
wp-includes/media.php
> and (2) mishandling of meta information in the renderTracks function in
> wp-includes/js/mediaelement/wp-playlist.js.
>
> ------------------------------------------
>
> [Vulnerability Type]
> Cross Site Scripting (XSS)
>
> ------------------------------------------
>
> [Affected Product Code Base]
> wordpress - 3.6.0-4.7.2
>
> ------------------------------------------
>
> [Attack Type]
> Remote
>
> ------------------------------------------
>
> [Attack Vectors]
> Two Cross-Site Scripting vulnerabilities exists in the playlist
> functionality of WordPress. These issues can be exploited by
> convincing an Editor or Administrator into uploading a malicious MP3
> file. Once uploaded the issues can be triggered by a Contributor or
> higher using the playlist shortcode.
>
> ------------------------------------------
>
> [Reference]
>
https://wordpress.org/news/2017/03/wordpress-4-7-3-security-and-maintenance-release/
>
https://sumofpwn.nl/advisory/2016/wordpress_audio_playlist_functionality_is_affected_by_cross_site_scripting.html
> https://codex.wordpress.org/Version_4.7.3
>
https://github.com/WordPress/WordPress/commit/28f838ca3ee205b6f39cd2bf23eb4e5f52796bd7
> http://openwall.com/lists/oss-security/2017/03/06/8
>
> ------------------------------------------
>
> [Has vendor confirmed or acknowledged the vulnerability?]
> true
>
> ------------------------------------------
>
> [Discoverer]
> Chris Andre Dale, Yorick Koster, and Simon P. Briggs

Use CVE-2017-6814.


> [Suggested description]
> In WordPress before 4.7.3 (wp-includes/pluggable.php),
> control characters can trick redirect URL validation.
>
> ------------------------------------------
>
> [VulnerabilityType Other]
> Trick the URL validation
>
> ------------------------------------------
>
> [Affected Product Code Base]
> wordpress - 2.8.1-4.7.2
>
> ------------------------------------------
>
> [Attack Type]
> Remote
>
> ------------------------------------------
>
> [Reference]
> https://codex.wordpress.org/Version_4.7.3
>
https://wordpress.org/news/2017/03/wordpress-4-7-3-security-and-maintenance-release/
>
https://github.com/WordPress/WordPress/commit/288cd469396cfe7055972b457eb589cea51ce40e
>
> ------------------------------------------
>
> [Has vendor confirmed or acknowledged the vulnerability?]
> true
>
> ------------------------------------------
>
> [Discoverer]
> Daniel Chatfield

Use CVE-2017-6815.


> [Suggested description]
> In WordPress before 4.7.3 (wp-admin/plugins.php),
> unintended files can be deleted by administrators using the plugin
deletion functionality.
>
> ------------------------------------------
>
> [Vulnerability Type]
> Insecure Permissions
>
> ------------------------------------------
>
> [Affected Product Code Base]
> wordpress - 4.7.0-4.7.2
>
> ------------------------------------------
>
> [Affected Component]
> wp-admin/plugins.php
>
> ------------------------------------------
>
> [Attack Type]
> Remote
>
> ------------------------------------------
>
> [Impact Escalation of Privileges]
> true
>
> ------------------------------------------
>
> [Reference]
> https://codex.wordpress.org/Version_4.7.3
>
https://wordpress.org/news/2017/03/wordpress-4-7-3-security-and-maintenance-release/
>
https://github.com/WordPress/WordPress/commit/4d80f8b3e1b00a3edcee0774dc9c2f4c78f9e663
>
> ------------------------------------------
>
> [Has vendor confirmed or acknowledged the vulnerability?]
> true
>
> ------------------------------------------
>
> [Discoverer]
> TrigInc and xuliang

Use CVE-2017-6816.


> [Suggested description]
> In WordPress before 4.7.3 (wp-includes/embed.php),
> there is
> authenticated Cross-Site Scripting (XSS) in YouTube URL Embeds.
>
> ------------------------------------------
>
> [Vulnerability Type]
> Cross Site Scripting (XSS)
>
> ------------------------------------------
>
> [Affected Product Code Base]
> wordpress - 4.0-4.7.2
>
> ------------------------------------------
>
> [Attack Type]
> Remote
>
> ------------------------------------------
>
> [Reference]
> https://codex.wordpress.org/Version_4.7.3
>
https://wordpress.org/news/2017/03/wordpress-4-7-3-security-and-maintenance-release/
>
https://github.com/WordPress/WordPress/commit/419c8d97ce8df7d5004ee0b566bc5e095f0a6ca8
>
> ------------------------------------------
>
> [Has vendor confirmed or acknowledged the vulnerability?]
> true
>
> ------------------------------------------
>
> [Discoverer]
> Marc Montpas

Use CVE-2017-6817.


> [Suggested description]
> In WordPress before 4.7.3 (wp-admin/js/tags-box.js),
> there is
> cross-site scripting (XSS) via taxonomy term names.
>
> ------------------------------------------
>
> [Vulnerability Type]
> Cross Site Scripting (XSS)
>
> ------------------------------------------
>
> [Affected Product Code Base]
> wordpress - 4.7-4.7.2
>
> ------------------------------------------
>
> [Affected Component]
> Taxonomy names
>
> ------------------------------------------
>
> [Attack Type]
> Remote
>
> ------------------------------------------
>
> [Reference]
> https://codex.wordpress.org/Version_4.7.3
>
https://wordpress.org/news/2017/03/wordpress-4-7-3-security-and-maintenance-release/
>
https://github.com/WordPress/WordPress/commit/9092fd01e1f452f37c313d38b18f9fe6907541f9
>
> ------------------------------------------
>
> [Has vendor confirmed or acknowledged the vulnerability?]
> true
>
> ------------------------------------------
>
> [Discoverer]
> Delta

Use CVE-2017-6818.


> [Suggested description]
> In WordPress before 4.7.3,
> there is
> cross-site request forgery (CSRF) in Press This
> (wp-admin/includes/class-wp-press-this.php), leading to excessive use of
server resources.
> The CSRF can trigger an outbound HTTP request for a large file that is
then parsed by Press This.
>
> ------------------------------------------
>
> [Vulnerability Type]
> Cross Site Request Forgery (CSRF)
>
> ------------------------------------------
>
> [Affected Product Code Base]
> wordpress - 4.2-4.7.2
>
> ------------------------------------------
>
> [Affected Component]
> Press This module
>
> ------------------------------------------
>
> [Attack Type]
> Remote
>
> ------------------------------------------
>
> [Impact Denial of Service]
> true
>
> ------------------------------------------
>
> [Attack Vectors]
> Craft a html file on a remote server and get admin to visit it using
Press This module
>
> ------------------------------------------
>
> [Reference]
> https://codex.wordpress.org/Version_4.7.3
>
https://wordpress.org/news/2017/03/wordpress-4-7-3-security-and-maintenance-release/
>
https://github.com/WordPress/WordPress/commit/263831a72d08556bc2f3a328673d95301a152829
>
https://sumofpwn.nl/advisory/2016/cross_site_request_forgery_in_wordpress_press_this_function_allows_dos.html
> http://openwall.com/lists/oss-security/2017/03/06/7
>
> ------------------------------------------
>
> [Has vendor confirmed or acknowledged the vulnerability?]
> true
>
> ------------------------------------------
>
> [Discoverer]
> Sipke Mellema

Use CVE-2017-6819.


- --
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYxJWeAAoJEHb/MwWLVhi2siMQAKXaKOf5BZpRfjzAX6cg9hr6
NeDP3Pw/LyrWlQNQIX0jg7v0L8WNg1AJ1qU3rnW3y+9Nn9HL2QB6FX5j+TCkmWQQ
9Jufvcl742xqQEGqkROyYjE04uh9WZjp2VOKDJe64edyiJ5hdIO3WH8OrZ5L08WF
jd6YD6jEpuroqyUoY+36un/M8AKP/AFOHOcMknsu4v6WOPCm4D7RX2HifL2pqNar
7k29sxTt727PHlZkDfbs0sOhPy1icrhZ0NzWJ34u42099j6sGUc9Cz/P2OjySYdP
JwB9q2JwWmgbP8HxYNnnFGvdzE6hAZUOvjJiLgU07Y/6T8RrKJpozzzknAZ/fvst
ZM0oCWZxCzleIg0cpk+2FF/l6YJ4scBfITJq/wrpzPbA+UskYk7v2R41T83oli5j
PFqFAZXVg8pOL7VUpwPx6W1dR77HXJe9aOoslgM2SToXBf7amsaJCk3wn0/ysP41
eiNA6x9QHqBQmv4F27GD1F9rX0SYcsnb8L/uUVnnKzTrJiU3wvqeSLeDGhEKi+A7
kzfYX9SVwQod3wKyNg1B+WtlRZc+AV3zg5OThfUIbv+Y6jmowyGUIQXyAkuzsu1b
jmDfdY7X0dD9vaKNOy2W4kBfycRBUH7lB61EIQR3stq1S5v1+GvRLsZh1NBjXQX6
PvQbSfQLSAyPY9xY6/NF
=yD6/
-----END PGP SIGNATURE-----
-- 
Craig Small (@smallsees)   http://dropbear.xyz/     csmall at : enc.com.au
Debian GNU/Linux           http://www.debian.org/   csmall at : debian.org
GPG fingerprint:        5D2F B320 B825 D939 04D2  0519 3938 F96B DF50 FEA5

--001a1140eab4d0e2cd054a8e856d--
