X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["971" "Thursday" "24" "September" "2015" "11:30:16" "+0200" "Florian Weimer" "fweimer@redhat.com" "<5603C2A8.3060202@redhat.com>" "24" "Re: [oss-security] CVE request: BD-J implementation in libbluray" nil nil nil "9" "2015092409:30:16" "[oss-security] CVE request: BD-J implementation in libbluray" (number mark "        fweimer@redh Sep 24   24/971   " thread-indent "\"Re: [oss-security] CVE request: BD-J implementation in libbluray\"\n") "<54EAEB47.7070106@redhat.com>" ("<54EAEB47.7070106@redhat.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 19969 invoked by uid 550); 24 Sep 2015 09:30:31 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 19945 invoked from network); 24 Sep 2015 09:30:30 -0000
References: <54EAEB47.7070106@redhat.com>
Message-ID: <5603C2A8.3060202@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <54EAEB47.7070106@redhat.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Date: Thu, 24 Sep 2015 11:30:16 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: BD-J implementation in libbluray
To: oss-security@lists.openwall.com,
        Assign a CVE Identifier <cve-assign@mitre.org>,
        VideoLAN Security Team <security@videolan.org>

On 02/23/2015 09:56 AM, Florian Weimer wrote:
> Missing Java Security Manager sandboxing mechanism / feature in the
> org.videolan.BDJLoader class
> 
> Description:
> 
> It was found that org.videolan.BDJLoader class implementation of
> libbluray, a library to access Blu-Ray disks for video playback, was
> missing Java Security Manager sandboxing.  A specially-crafted Java
> application, utilizing the functionality of org.videolan.BDJLoader
> class, could use this missing feature to perform actions as the user
> running the Bluray player application.
> 
> Note: libbluray upstream disables BD-J support by default, but some
> downstreams (like Fedora) pass --enable-bdjava at configure time,
> enabling it for their distribution.
> 
> (This may affect proprietary BD-J implementations as well, I haven't
> investigated this due to lack of hardware and documentation.)

Could we finally get a CVE ID for this?  Thanks.

-- 
Florian Weimer / Red Hat Product Security
