Received: (qmail 20323 invoked by uid 550); 7 Aug 2024 20:34:29 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 14125 invoked from network); 7 Aug 2024 20:16:49 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=citron; t=1723061802; x=1723728468; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-author:resent-date:resent-from:
  resent-sender:resent-to:resent-cc:resent-reply-to:resent-message-id:
  in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=mR6dwUMBiWrTmlbwvplR+fQ0DHIxS4563i08n4da4AQ=;
 b=Vauus2w3/qr1e1FjQufGmHYxtwr+SOjuAIQP7ewfK2SIIfdqvdjxnts5vg81PCW7MFt7GVBV
  zYq1R7I41G12Jm1Sm781HYoCFsQyAuruUvwY8T8J2MlJXGr9/c7A2jwtsmhOdWn72bhvW9zbBH
  qZ/+cA0GFJFmma5gLtfwbRBMv7BPhshwbk6Sjs7cCexvkGCazohqPCEqiIgSqUi181IpKA2UQI
  EcGdxxQT/mnnvDU8gUfjsggAUAOwATbeu2q20Y1sE54wWZchTGdkAOK64Ryv2jlzsul+3Kqq1Z
  OmwsVLYR3brIf7OQ7R+lStsXC5PKXTJu3bEQV3fiNWyIQDxA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=sdaoden.eu;
 s=orange; t=1723061802; x=1723728468; h=date:author:from:to:subject:
  message-id:in-reply-to:references:mail-followup-to:openpgp:blahblahblah:
  author:from:subject:date:to:cc:resent-author:resent-date:resent-from:
  resent-sender:resent-to:resent-cc:resent-reply-to:resent-message-id:
  in-reply-to:references:mime-version:content-type:
  content-transfer-encoding:content-disposition:content-id:
  content-description:message-id:mail-followup-to:openpgp:blahblahblah;
 bh=mR6dwUMBiWrTmlbwvplR+fQ0DHIxS4563i08n4da4AQ=;
 b=jv019aILNIAGS0KsJGA5Bb7mtMMp6coKUuXpBZP4HfEvdyu0xXKmT/s2Bsc7H34oCA9e8CYk
  QskpIGPOuSNuCA==
Date: Wed, 07 Aug 2024 22:16:40 +0200
Author: Steffen Nurpmeso <steffen@sdaoden.eu>
From: Steffen Nurpmeso <steffen@sdaoden.eu>
To: oss-security@lists.openwall.com
Message-ID: <20240807201640.1RD27ogN@steffen%sdaoden.eu>
In-Reply-To: <CADz+4x8wo6KaCU9b2s_+VkB08X7U4WWJHj66UfyvRU1qKUUd-A@mail.gmail.com>
References: <CAJbOq16ebWS21u439bcV764HhaeQHF+eO64LdMAAKFgjdDLrMg@mail.gmail.com>
 <20240806171232.6bd08942@zbook> <ZrJv8PDeCxQQJVxH@itl-email>
 <20240807144047.GA12108@test> <20240807174807.GA4206@openwall.com>
 <CADz+4x8wo6KaCU9b2s_+VkB08X7U4WWJHj66UfyvRU1qKUUd-A@mail.gmail.com>
Mail-Followup-To: oss-security@lists.openwall.com
User-Agent: s-nail v14.9.24-621-g0d1e55f367
OpenPGP: id=EE19E1C1F2F7054F8D3954D8308964B51883A0DD;
 url=https://ftp.sdaoden.eu/steffen.asc; preference=signencrypt
BlahBlahBlah: Any stupid boy can crush a beetle. But all the professors in
 the world can make no bugs.
Subject: Re: [oss-security] feedback requested regarding deprecation
 of TLS 1.0/1.1

Pat Gunn wrote in
 <CADz+4x8wo6KaCU9b2s_+VkB08X7U4WWJHj66UfyvRU1qKUUd-A@mail.gmail.com>:
 |There are degrees of old; supporting people with a range of computers still
 |likely to be out there with some numbers is different from catering to the
 |very long tail (or museum pieces). Taking "the widest audience possible"

Here i would be careful, for example think military, and things
like Microsoft 3.1 used by some american airliner etc.
I mean, for email, and more, the IETF has deprecated TLS 1.0 at
least six years ago -- officially that is.

 |too literally would require supporting HTTP forever, perhaps even host-less
 |HTTP/0.9 (no vhosts). I think to even enter the tent of reasonability
 |people need to accept that "widest possible" is not a sustainable metric,
 |and that letting security-essential libraries evolve means letting them
 |ditch dead weight that may be part of their penetration surface.

Isn't that terribly rhetorical, and can kill sheeps indeed.
To reiterate that SSL/TLS are standards, they had version
iterations, which possibly got around some real protocol problem.
These offer standardized sets of ciphersuites, some of those, of
the elder versions, are "no longer secure".  (I am no
cryptographer to tell whether they ever were completely so, or
whether there are "mathematical tricks" to get away without brute
force for them.  That aside.)  That is basically it.  But, as far
as i understand it, even TLSv1 supported forward-secrecy stuff, ie

  # openssl ciphers -v EECDH+AESGCM:EECDH+AES256:CHACHA20:!DHE

gives two members, and except for the SHA-1 MAC this looks pretty
modern.  But again: i am far from being an expert.

 |For expiring CA certs, I'm not aware of many tools that offer to bypass
 |checks (although I also haven't verified that many do such checks); do you
 |have examples in mind?

I guess any good applications can.  It seems to me that OpenSSL
itself offers no-check-time flags, aka X509_V_FLAG_NO_CHECK_TIME.
Etc etc etc.

 |I'm guessing for that ssl-obsolete idea, you'd want to use dlopen() or some
 |equivalent so the symbols are never loaded at the same time, or just link
 |with an older version of the library, making two different binaries with
 |different linking if need be. I suspect these concerns are so niche that
 |the few people who might be inconvenienced are also technologically
 |sophisticated enough to find solutions.



P.S.: i have a Phillips television, which got a red dot award, and
it shipped with OpenSSL from 2014, i think five years old once the
model sprang into existence.  No longer watching TV, yet used it
for bluetooth audio, with speakers plugged in.  Software terribly
buggy, i can write books on that.

Anyhow, *that* thing would go to the internet, if i only would let
it.  Not to talk about refrigerators and (LED) light bulbs.  And
you know, especially the latter lies for years, at least here!
(Of course: i would assume they telephone home first, like E.T.,
to get new CA certs or what.  And all the rest, of course, who
i am, where i am, and all that.  Maybe.)

No longer works btw, the speakers remain silent; built-in speaker
works but is terrible, yet with "play -t wav - bass -20 treble +8
gain -n" we get something halfway acceptable.  Unfortunately faad2
seems to have problems in between -oFILE and -w (stdout), 'just
opened an issue today (that hardware failure was last week..), so
i ended up with a quick hack (of that quick hack) like this:

  while [ $# -gt 0 ]; do
          i=$1
          shift

          p=
          if [ "$i" != "${i%*.ogg}" ]; then
                  p='ogg123 -q -d wav -f -'
          elif [ "$i" != "${i%*.mp4}" ] || [ "$i" != "${i%*.aac}" ]; then
                  p='faad -d -q -w -f1'
                          echo >&2 'Please stand by, faad bug bypass'
                          p=/tmp/.playbt-$(id -u)-$$.wav
                          set -e -C
                          > $p
                          set +e +C
                          trap "rm -f $p" INT HUP QUIT TERM PIPE
                          faad -d -q -f1 -o $p "$i"
                          play -t wav $p bass -20 treble +8 gain -n
                          rm -f $p
                          trap '' INT HUP QUIT TERM PIPE
                          continue
          elif [ "$i" != "${i%*.mp2}" ]; then
                  play -t mp2 "$i" - bass -20 treble +8 gain -n
                  continue
          else
                  echo >&2 'Skip '$i
                  continue
          fi
          $p "$i" | play -t wav - bass -20 treble +8 gain -n
                  #-r 22050 -e signed -b 16 -t raw -L -c 2 - \
  done

Yeah, of course, because i have some 22050 and 44100, and then
i was too lazy to get original thing so i can adjust the actual
frequency accordingly.  Well well.  Then again on Linux that pipe
fills up completely, ie

  $ df -h|grep -F ' /tmp'
  tmpfs                14G  3.2G   10G  25% /tmp
  $ du -sh /tmp/
  14M     /tmp/

Maybe this is because i now have hugetbl support built-in.?!?  Hm.
But i would expect it to become problematic, if multiple pipes are
filled.  I mean: 3.2GB pipe buffer!  Wow, man, uh!  6.1.103.

--steffen
|
|Der Kragenbaer,                The moon bear,
|der holt sich munter           he cheerfully and one by one
|einen nach dem anderen runter  wa.ks himself off
|(By Robert Gernhardt)
|
| Only during dog days:
| On the 81st anniversary of the Goebbel's Sportpalast speech
| von der Leyen gave an overlong hypocritical inauguration one.
| The brew's essence of our civilizing advancement seems o be:
|   Total war - shortest war -> Permanent war - everlasting war
