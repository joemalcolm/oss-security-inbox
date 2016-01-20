X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["734" "Wednesday" "20" "January" "2016" "11:07:19" "-0700" "Kurt Seifried" "kseifried@redhat.com" "<CANO=Ty1Rp1m=qTr7Y+JGfFwAO3Q7nFwWdYGd6-Nb7N==DcZ-HA@mail.gmail.com>" "27" "Re: [oss-security] Prime example of a can of worms" "^Cc:" nil nil "1" "2016012018:07:19" "[oss-security] Prime example of a can of worms" (number mark "        kseifried@re Jan 20   27/734   " thread-indent "\"Re: [oss-security] Prime example of a can of worms\"\n") "<87lh7k5dxs.fsf@alice.fifthhorseman.net>" ("<CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>" "<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>" "<20151019193411.GA15710@hunt>" "<87eggqmta9.fsf@alice.fifthhorseman.net>" "<20151021170113.128d3a8e@silentmaxx>" "<CANO=Ty0eLFpezes_WfNTN0eKj6u5BinhwBQkM6BR7PZPg3eCiA@mail.gmail.com>" "<20151023145631.GA21048@gremlin.ru>" "<CANO=Ty16P4GKb4HYtFugYsjufSZOBf+euv7O6WopKsAPuhKHtw@mail.gmail.com>" "<87vb6o5fsm.fsf@alice.fifthhorseman.net>" "<CANO=Ty0shFs5oAykxDPRsfMAw65bnEwCN7_m_df4j61XEpthBQ@mail.gmail.com>" "<87lh7k5dxs.fsf@alice.fifthhorseman.net>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23688 invoked by uid 550); 20 Jan 2016 18:07:32 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23663 invoked from network); 20 Jan 2016 18:07:31 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=x0+zYafouXgQfnfBi2IYMwFgVPwKIIWQUb2SG7of3RI=;
        b=DhZhVLlWEkiT8vNCY7dJUgORpOtt+BEHrmd0igrBuHanV3RioZrT3bc+/+CwDpw/Ix
         jz14EgB8YisvT1LEFTM9HUFzs7MXtP3eR03YI3EDXmct+9OnyPyMyzYfOSHmLca/Ldpo
         O+WcLIN/D1LTfGYAnZnxusN97Ow6y0lPD3v2zgo9SmAsuwFrWG7dPXqLFD1zyp5GUhkw
         RA0QSevFZzJ2tfehJmJPiFZXzRb83PkR6bDEvBxn/GPsLMn+FAY+00wwdsyt1Dn528a4
         q8bbjHgdD4ydjo7Le7vL6luwRMnDQXwkwZsIs9dCFkpHJbcMAIpU2WcT5til8sLkEgrZ
         a71A==
X-Gm-Message-State: ALoCoQkwctuGAjsLDmn4poDN8WTc+1ad3q2a5W/7cFk1G9feBxLO1fNyAEEtGWkv8DVZSWh6O7OaTRbw6POrNZrUvd3F2lKX5CU7zCL3+25nbCNItj8yv7Y=
MIME-Version: 1.0
X-Received: by 10.13.206.2 with SMTP id q2mr23757290ywd.76.1453313239761; Wed,
 20 Jan 2016 10:07:19 -0800 (PST)
In-Reply-To: <87lh7k5dxs.fsf@alice.fifthhorseman.net>
References: <CANO=Ty18_pMLco8RdabsEbhs9sLahRhT_U93PGhDVwhcRaqzpQ@mail.gmail.com>
	<CAFRnB2Wrz=zexGonV5fHosVqfiOhNvA6Ya2YsCYyDkt7UE_0mw@mail.gmail.com>
	<20151019193411.GA15710@hunt>
	<87eggqmta9.fsf@alice.fifthhorseman.net>
	<20151021170113.128d3a8e@silentmaxx>
	<CANO=Ty0eLFpezes_WfNTN0eKj6u5BinhwBQkM6BR7PZPg3eCiA@mail.gmail.com>
	<20151023145631.GA21048@gremlin.ru>
	<CANO=Ty16P4GKb4HYtFugYsjufSZOBf+euv7O6WopKsAPuhKHtw@mail.gmail.com>
	<87vb6o5fsm.fsf@alice.fifthhorseman.net>
	<CANO=Ty0shFs5oAykxDPRsfMAw65bnEwCN7_m_df4j61XEpthBQ@mail.gmail.com>
	<87lh7k5dxs.fsf@alice.fifthhorseman.net>
Message-ID: <CANO=Ty1Rp1m=qTr7Y+JGfFwAO3Q7nFwWdYGd6-Nb7N==DcZ-HA@mail.gmail.com>
Content-Type: multipart/alternative; boundary=001a114da67e677d2e0529c7db69
Cc: oss-security <oss-security@lists.openwall.com>
Date: Wed, 20 Jan 2016 11:07:19 -0700
From: Kurt Seifried <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] Prime example of a can of worms
To: Daniel Kahn Gillmor <dkg@fifthhorseman.net>

--001a114da67e677d2e0529c7db69
Content-Type: text/plain; charset=UTF-8

On Wed, Jan 20, 2016 at 11:00 AM, Daniel Kahn Gillmor <dkg@fifthhorseman.net
> wrote:

> On Wed 2016-01-20 12:25:42 -0500, Kurt Seifried wrote:
> > Sorry yes, although this also applies equally to keys/etc.
>
> sure, though i hope we're not in a "few keys" scenario, that would
> definitely be bad :)
>

Yes it would be bad:

https://blog.shodan.io/duplicate-ssh-keys-everywhere/

There was another analysis with even more worrying numbers but I can't find
it.


--
Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

--001a114da67e677d2e0529c7db69--
