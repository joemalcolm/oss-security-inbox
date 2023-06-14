Received: (qmail 10169 invoked by uid 550); 14 Jun 2023 12:52:18 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 10135 invoked from network); 14 Jun 2023 12:52:17 -0000
Date: Wed, 14 Jun 2023 07:52:05 -0500 (CDT)
From: Bob Friesenhahn <bfriesen@simple.dallas.tx.us>
X-X-Sender: bfriesen@scrappy.simplesystems.org
To: oss-security@lists.openwall.com
In-Reply-To: <ZIlQkTsEsfKbRus7@eldamar.lan>
Message-ID: <alpine.GSO.2.20.2306140729130.11306@scrappy.simplesystems.org>
References: <2308609.bdg04gU6LQ@portable-bastien> <ZIlQkTsEsfKbRus7@eldamar.lan>
User-Agent: Alpine 2.20 (GSO 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="3735943886-2146380029-1686747125=:11306"
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16 (smtp.simplesystems.org [65.66.246.90]); Wed, 14 Jun 2023 07:52:05 -0500 (CDT)
Subject: Re: [oss-security] Stack overflow in imagemagick coders/tiff.c

--3735943886-2146380029-1686747125=:11306
Content-Type: text/plain; charset=iso-8859-1; format=flowed
Content-Transfer-Encoding: 8BIT

On Wed, 14 Jun 2023, Salvatore Bonaccorso wrote:

> Hi
>
> On Mon, May 29, 2023 at 08:11:18AM +0000, Bastien Roucariès wrote:
>> Hi,
>>
>> Reading changelog and code of imagemagick, I want to report a stack overflow with crafted tiff file in imagemagick
>>
>> Fixed (after 6.9.12-26) by:
>> https://github.com/ImageMagick/ImageMagick6/commit/85a370c79afeb45a97842b0959366af5236e9023
>
> CVE-2023-3195 has been assigned for this issue according to
> https://bugzilla.redhat.com/show_bug.cgi?id=2214141 (not yet on
> cve.org feed itself).

It seems suspicious that (after looking at the code) this is obviously 
a heap overflow (of the 'tile_pixels' allocation) rather than a stack 
overflow.  Whenever something is mischaracterized, it becomes suspect.

The overflow checking while computing 'extent' still seems suspect and 
is worthy of more inspection, especially on 32-bit systems.

The development ImageMagick 7.1 is included in oss-fuzz testing (but 
has not successfully compiled since May 22nd).  Oss-fuzz has 
discovered 2935 serious issues related to development ImageMagick 7 
since 2017, and most of those have been fixed in ImageMagick 7, but 
not in legacy ImageMagick 6.

Linux/OSS distributions still distributing ImageMagick 6 are severely 
fooling themselves and their users if it is believed that the software 
can be made secure by applying a few patches.

Bob
-- 
Bob Friesenhahn
bfriesen@simple.dallas.tx.us, http://www.simplesystems.org/users/bfriesen/
GraphicsMagick Maintainer,    http://www.GraphicsMagick.org/
Public Key,     http://www.simplesystems.org/users/bfriesen/public-key.txt
--3735943886-2146380029-1686747125=:11306--
