X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1049" "Friday" "10" "April" "2015" "11:26:53" "+0200" "Vitezslav Cizek" "civ@blema.cz" "<20150410092652.GA27909@blema.cz>" "28" "Re: [oss-security] Re: [CVE Requests] rsync and librsync collisions" nil nil nil "4" "2015041009:26:53" "[oss-security] Re: [CVE Requests] rsync and librsync collisions" (number mark "        civ@blema.cz Apr 10   28/1049  " thread-indent "\"Re: [oss-security] Re: [CVE Requests] rsync and librsync collisions\"\n") "<CACYkhxjxuCUj0b5VzicAzKgq42xFU2Rdk736yETPY1d11h5xcw@mail.gmail.com>" ("<540E7816.90001@redhat.com>" "<20140912183958.D1DA96C000A@smtpvmsrv1.mitre.org>" "<CACYkhxhmU74Xsi4H_tBYxY17Y0ovHDdrPfn1pLp1hW6OY6U8dw@mail.gmail.com>" "<CAOp4FwTAFW816AHSE8xZHvVXTYEtArDTNPzTiU+5sOYdEw4efA@mail.gmail.com>" "<CACYkhxjxuCUj0b5VzicAzKgq42xFU2Rdk736yETPY1d11h5xcw@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 15684 invoked by uid 550); 10 Apr 2015 09:27:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 15659 invoked from network); 10 Apr 2015 09:27:05 -0000
Message-ID: <20150410092652.GA27909@blema.cz>
References: <540E7816.90001@redhat.com>
 <20140912183958.D1DA96C000A@smtpvmsrv1.mitre.org>
 <CACYkhxhmU74Xsi4H_tBYxY17Y0ovHDdrPfn1pLp1hW6OY6U8dw@mail.gmail.com>
 <CAOp4FwTAFW816AHSE8xZHvVXTYEtArDTNPzTiU+5sOYdEw4efA@mail.gmail.com>
 <CACYkhxjxuCUj0b5VzicAzKgq42xFU2Rdk736yETPY1d11h5xcw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CACYkhxjxuCUj0b5VzicAzKgq42xFU2Rdk736yETPY1d11h5xcw@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: oss-security@lists.openwall.com
Date: Fri, 10 Apr 2015 11:26:53 +0200
From: Vitezslav Cizek <civ@blema.cz>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Re: [CVE Requests] rsync and librsync collisions
To: Michael Samuel <mik@miknet.net>

Hi Michael,

* Dne Thursday 18. September 2014, 04:30:22 [CEST] Michael Samuel napsal:
> Ok, for rsync you can download colliding blocks (and a brief description) here:
> 
> https://github.com/therealmik/rsync-collision
> 
> I don't get the feeling that this will be fixed upstream, but a simple
> fix would be
> to incorporate libdetectcoll from Marc Stevens into rsync, and when a collision
> attempt is detected to simply send a data block.
> 
> A longer-term would be to just replace MD5 with a collision-resistant hash
> function - blake2 is a good fit.  The 128-bit output is right on the
> edge of being
> strong enough.
> 
> I submitted a very rough patch which does both, but I haven't had the
> time to clean
> the rough edges - the libdetectcoll codebase needs a fair amount of cleaning
> (printfs etc), and the rsync codebase needs a fair bit of refactor to
> handle hash
> output lengths > 16 bytes.

Was there any further progress with the rsync upstream?
Are they planning to address this issue or is there no interest?

  Vita Cizek
