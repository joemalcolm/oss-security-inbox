X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1507" "Monday" "5" "October" "2015" "11:21:38" "+0200" "Florian Weimer" "fweimer@redhat.com" "<56124122.10305@redhat.com>" "37" "Re: [oss-security] CVE request: BD-J implementation in libbluray" nil nil nil "10" "2015100509:21:38" "[oss-security] CVE request: BD-J implementation in libbluray" (number mark "        fweimer@redh Oct  5   37/1507  " thread-indent "\"Re: [oss-security] CVE request: BD-J implementation in libbluray\"\n") "<561155A0.7020400@videolan.org>" ("<54EAEB47.7070106@redhat.com>" "<5603C2A8.3060202@redhat.com>" "<561155A0.7020400@videolan.org>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 26486 invoked by uid 550); 5 Oct 2015 09:21:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 26463 invoked from network); 5 Oct 2015 09:21:54 -0000
References: <54EAEB47.7070106@redhat.com> <5603C2A8.3060202@redhat.com>
 <561155A0.7020400@videolan.org>
Message-ID: <56124122.10305@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <561155A0.7020400@videolan.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.27
Date: Mon, 5 Oct 2015 11:21:38 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] CVE request: BD-J implementation in libbluray
To: Jean-Baptiste Kempf <jb@videolan.org>, oss-security@lists.openwall.com,
        Assign a CVE Identifier <cve-assign@mitre.org>

On 10/04/2015 06:36 PM, Jean-Baptiste Kempf wrote:
> On 24/09/2015 11:30, Florian Weimer wrote:
>> On 02/23/2015 09:56 AM, Florian Weimer wrote:
>>> Missing Java Security Manager sandboxing mechanism / feature in the
>>> org.videolan.BDJLoader class
>>>
>>> Description:
>>>
>>> It was found that org.videolan.BDJLoader class implementation of
>>> libbluray, a library to access Blu-Ray disks for video playback, was
>>> missing Java Security Manager sandboxing.  A specially-crafted Java
>>> application, utilizing the functionality of org.videolan.BDJLoader
>>> class, could use this missing feature to perform actions as the user
>>> running the Bluray player application.
>>>
>>> Note: libbluray upstream disables BD-J support by default, but some
>>> downstreams (like Fedora) pass --enable-bdjava at configure time,
>>> enabling it for their distribution.
>>>
>>> (This may affect proprietary BD-J implementations as well, I haven't
>>> investigated this due to lack of hardware and documentation.)
>>
>> Could we finally get a CVE ID for this?  Thanks.
> 
> Btw, aren't those security issues fixed now?

I don't know.  There is a BDJSecurityManager, but I'm not convinced it's
sufficiently strict.  For instance, the checkPermission(Permission)
method does not call checkWrite(String) for FilePermission objects at
all.  This does not look right, but I'm not familiar with the finer
points of Java sandboxing.

Anyway, I can't test this due to lack of a BD-J production environment,
sorry.

Florian

