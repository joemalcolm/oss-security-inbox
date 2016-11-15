X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1127" "Tuesday" "15" "November" "2016" "21:15:00" "+0000" "Jeremy Stanley" "jeremy@openstack.org" "<20161115211458.GK2344@openstack.org>" "24" "Re: [oss-security] Re: [FD] [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell" "^Date:" nil nil "11" "2016111521:15:00" "[oss-security] Re: [FD] [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell" (number mark "U       jeremy@opens Nov 15   24/1127  " thread-indent "\"Re: [oss-security] Re: [FD] [oss-security] CVE-2016-4484: - Cryptsetup Initrd root Shell\"\n") "<07b5ffe5-247c-63a3-6f3f-884a79ede301@upv.es>" ("<88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>" "<20161115032707.GA5104@jasmine>" "<07b5ffe5-247c-63a3-6f3f-884a79ede301@upv.es>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 26616 invoked by uid 550); 15 Nov 2016 21:18:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 25721 invoked from network); 15 Nov 2016 21:15:15 -0000
X-Auth-ID: jeremy@openstack.org
X-Sender-Id: jeremy@openstack.org
Message-ID: <20161115211458.GK2344@openstack.org>
References: <88958a9e-25c1-97ce-1800-bc4bff93d9a9@hmarco.org>
 <20161115032707.GA5104@jasmine>
 <07b5ffe5-247c-63a3-6f3f-884a79ede301@upv.es>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <07b5ffe5-247c-63a3-6f3f-884a79ede301@upv.es>
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Tue, 15 Nov 2016 21:15:00 +0000
From: Jeremy Stanley <jeremy@openstack.org>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: [FD] [oss-security] CVE-2016-4484: -
 Cryptsetup Initrd root Shell
To: oss-security@lists.openwall.com

On 2016-11-15 20:11:11 +0000 (+0000), Hector Marco wrote:
> It would be more precise to say "2:1.7.3-2" rather than "2:1".
> This number refers to the Debian package. It seems that Debian is using
> different version numbers for the "cryptsetup" package:
> 
> https://security-tracker.debian.org/tracker/CVE-2016-4484
> 
> We are not sure whether the last part of the version number (2:1.7.3-2)
> of the Debian package (1.7.3-2) is used to match with the cryptsetup
> version.
[...]

The "2:" prefix is called an "epoch" and was introduced around the
time the package was renamed from "cryptsetup-luks" to "cryptsetup"
(for reasons not entirely clear to me from reading the package
changelog, but is usually employed to work around version numbers
going in reverse or mistakes in version numbers for a package). The
-2 suffix is a package revision, which makes updated packages
containing non-updated upstream releases possible (necessary to, for
example, be able to fix bugs in the packaging itself). So in the
case of a 2:1.7.3-2 package version, 1.7.3 is the corresponding
upstream source version number.
-- 
Jeremy Stanley
