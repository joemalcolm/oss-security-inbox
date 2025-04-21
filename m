Received: (qmail 19573 invoked by uid 550); 21 Apr 2025 17:49:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 19551 invoked from network); 21 Apr 2025 17:49:36 -0000
From: Russ Allbery <eagle@eyrie.org>
To: Mats Wichmann <mats@wichmann.us>
Cc: oss-security@lists.openwall.com
In-Reply-To: <49c8a7b7-0200-4bc6-bfca-4f376dcb3d25@wichmann.us> (Mats
	Wichmann's message of "Mon, 21 Apr 2025 10:53:28 -0600")
Organization: The Eyrie
References: <62e9c3e0-dd06-4d88-8192-1d0add89d0c8@oracle.com>
	<49c8a7b7-0200-4bc6-bfca-4f376dcb3d25@wichmann.us>
User-Agent: Gnus/5.13 (Gnus v5.13)
Date: Mon, 21 Apr 2025 10:49:25 -0700
Message-ID: <871ptls8uy.fsf@hope.eyrie.org>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [oss-security] 3 new CVE's in old branch of GNU mailman
X-Spam: Yes

Mats Wichmann <mats@wichmann.us> writes:
> On 4/21/25 10:08, Alan Coopersmith wrote:

>> 3 new CVE's have been published for GNU Mailman 2.1.39, as bundled with
>> cPanel and WHM, credited to Firudin Davudzada and Musazada Aydan. Note
>> that upstream declared GNU Mailman 2.1 (which requires Python 2), to be
>> end of life back in 2020, and recommends migrations to Mailman 3 (which
>> uses Python 3 instead):

> Sadly, a lot of people are stuck with these bundled environments from
> hosting services where the provider isn't going to provide any kind of
> upgrade path to Mailman 3.

Also, I would not really describe Mailman 3 as an upgrade from Mailman 2.
It is a different mailing list manager with a different architecture,
different dependencies, a much different UI, a different archiving system,
a completely different authentication mechanism, etc. It's essentially a
different piece of software that has a roughly similar feature set and
automated migration tools for Mailman 2.

For planning purposes, it's probably more realistic to view Mailman 2 as
orphaned, end-of-life software with known security vulnerabilities that
will require a major migration to retire. Mailman 3 has some useful
support for that migration and a similar feature set, so it's a good
candidate for a new mailing list manager to migrate to, but (speaking from
personal experience) that's what the experience is like: migrating to an
entirely new mailing list manager.

People will probably want to do some due diligence first to see if they
want to migrate to a different mailing list manager instead, want to
separate archiving from mailing list management (there are now a bunch of
good archiving tools that don't also need to manage the list), and so
forth.

-- 
Russ Allbery (eagle@eyrie.org)             <https://www.eyrie.org/~eagle/>
