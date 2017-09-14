X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2542" "Thursday" "14" "September" "2017" "15:04:43" "+0200" "Solar Designer" "solar@openwall.com" "<20170914130443.GA21420@openwall.com>" "55" "Re: [oss-security] tcpdump 4.9.2 is fully available" "^Cc:" nil nil "9" "2017091413:04:43" "[oss-security] tcpdump 4.9.2 is fully available" (number mark "        solar@openwa Sep 14   55/2542  " thread-indent "\"Re: [oss-security] tcpdump 4.9.2 is fully available\"\n") "<15e7d09e363.baac2a74163896.7143621165441625815@ovsienko.info>" ("<15e7d09e363.baac2a74163896.7143621165441625815@ovsienko.info>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 6059 invoked by uid 550); 14 Sep 2017 13:05:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 5222 invoked from network); 14 Sep 2017 13:04:53 -0000
Message-ID: <20170914130443.GA21420@openwall.com>
References: <15e7d09e363.baac2a74163896.7143621165441625815@ovsienko.info>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <15e7d09e363.baac2a74163896.7143621165441625815@ovsienko.info>
User-Agent: Mutt/1.4.2.3i
Cc: Denis Ovsienko <denis@ovsienko.info>
Date: Thu, 14 Sep 2017 15:04:43 +0200
From: Solar Designer <solar@openwall.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] tcpdump 4.9.2 is fully available
To: oss-security@lists.openwall.com

On Wed, Sep 13, 2017 at 09:59:13PM +0100, Denis Ovsienko wrote:
> As per Alexander's advice, let me comment for the avoidance of doubt that all deliverables for the tcpdump 4.9.2 release are public since today as advised last week. This includes individual commits in the public git repository with reference to particular CVE IDs and credits to the original reporter(s) and the author of each bugfix.

Thank you, Denis.  I was hoping you'd post more like a full advisory,
and include the credits and maybe the disclosure timeline.  I should
have been more specific.

Here's my reconstruction of the timeline:

Unknown date(s) - issues found

Unknown date(s) - issues reported to upstream

September 3 - tcpdump 4.9.2 release prepared, but not supposed to be
made public yet

Unknown date(s) - private disclosure (by upstream?) to some distros (not
via the distros list) with CRD set to September 25 (since a 3 week
embargo was mentioned elsewhere, this could have been on September 4)

September 4 - "The tar.gz turned up in the public release directory on 4
September by an accident"

September 5 - "and was deleted on 5 September"

September 5 - at least Mageia and Fedora update their tcpdump packages,
apparently due to these projects' automated monitoring for new upstream
releases (IIRC, as confirmed by links to automatically-created bug
tracking entries and such)

September 6 - upstream sends private message to some distros about the
leak, moving the CRD to September 13

September 6 - first notification to the distros list by NixOS, who are
not on the list and who thought the information was already known to
list members, saying in part "We don't think that the embargo can be
sustained under these conditions, even for another week."

September 6-8 - several people and distros try and fail to convince
upstream to go public with the full detail ASAP, but nevertheless
receive explicit permission to go ahead with releasing updated packages

September 7 - an Arch Linux developer (who is not on (linux-)distros and
apparently was not aware of the distros list discussion) brings the
issue to oss-security (it's unclear to me how that person knew of the
September 25 initial CRD); I approve that message right away

September 8 - upstream posts a clarification to oss-security, confirming
that distros are right to proceed with releasing updates; the tarball is
placed on the tcpdump.org website

September 13 - full detail is made public (I think this means individual
commits rather than only the tree as a whole)

Alexander
