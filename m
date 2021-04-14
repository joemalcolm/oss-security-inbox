X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["6238" "Wednesday" "14" "April" "2021" "13:22:11" "-0400" "Ana McTaggart" "amctagga@redhat.com" nil "144" "[oss-security] CVE-2021-20288 Ceph: Unauthorized global_id reuse in cephx" nil nil nil "4" nil nil (number mark "U       amctagga@red Apr 14  144/6238  " thread-indent "\"[oss-security] CVE-2021-20288 Ceph: Unauthorized global_id reuse in cephx\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2021-20288 Ceph: Unauthorized global_id reuse in cephx" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 32735 invoked by uid 550); 14 Apr 2021 17:51:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 23662 invoked from network); 14 Apr 2021 17:22:39 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1618420947;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=577yzdkvnZUsHAjTb2l777clxSIMD7ueFO0ZGCg8NzA=;
	b=OdOTWhFaR47QBu0rkqQqa9c+M+5is3dIERg5dHv+XFUTo178z8iHNAYXxW1TBPYr+6//jd
	7SnftMtQApD8PTJSqHZRIt6Dl53iXKkrYKx22TfaVNT0qtiTboFHR0Dq5FxiYc/39T5eC2
	xeEHzIlw7QtIT6b1uaJT/wJJsPwb97k=
X-MC-Unique: R9AXf5ltNrmjr6OOgyKcqg-1
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=577yzdkvnZUsHAjTb2l777clxSIMD7ueFO0ZGCg8NzA=;
        b=rUXGuHoqeZD63boqxenfM0YCprgQ9kmvjUMLK+aw6FWq/Hx0OEXS2Zq0JhDBL0xrC1
         yKJV3g6ek4yFmINk15JHEXIkecpkWAm53anBKvxdd4O0XYKucT6gDw1DMIMvVfEnfR30
         q1KeZa/4NcVIdRuqwE/6xp3JU1FrvFAhcNb9gq90Vzj5eDnblDe0InG5LrBgxhi7GlRl
         y68OY6TgUO6Tq6togWpDSJ5GDNmsavKNmQ5VAFI24nZ11oCyX1cn3bBlvoml119MWYt0
         X65+4q5lgTuRp/BcMFxMiwzXViRdLpgIP+VJzPHrn4NadgGEHyZdg8wgamFwfxR83TaX
         4dRw==
X-Gm-Message-State: AOAM532sAko0glTF6PcP/2fS4D+uKBJ4o1YjS7cakKNIsnuJZMb63Do7
	eow7h3PiEpH90nFcaM8GYgMP+pZDsEzlOaX7+MhrfxPGSXeeJ87wGY310vDnaok1L+Bzki7qteO
	EbaUJ6uVHeYDIAlbI5iQUG9KGdl6dE2Uz4EN+8T3C/2i4
X-Received: by 2002:a0c:b38b:: with SMTP id t11mr3204562qve.25.1618420942760;
        Wed, 14 Apr 2021 10:22:22 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw9ehMj9ZNVnqI1qKBWir+GjSC04idosowb/t7YGtnUbh2gGh4/uc8hQuWvLK2jQBWjBA0u9dS2kKuT20NKfKc=
X-Received: by 2002:a0c:b38b:: with SMTP id t11mr3204531qve.25.1618420942333;
 Wed, 14 Apr 2021 10:22:22 -0700 (PDT)
MIME-Version: 1.0
From: Ana McTaggart <amctagga@redhat.com>
Date: Wed, 14 Apr 2021 13:22:11 -0400
Message-ID: <CABBoStjanoz=h-VNkzJRzwAdOmWtrUkc=r4Cbz2JTSPAGTaMPg@mail.gmail.com>
To: oss-security@lists.openwall.com, Ilya Dryomov <idryomov@redhat.com>, 
	Sage Weil <sweil@redhat.com>
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=amctagga@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: multipart/alternative; boundary="0000000000005d848f05bff1fdd9"
Subject: [oss-security] CVE-2021-20288 Ceph: Unauthorized global_id reuse in cephx

--0000000000005d848f05bff1fdd9
Content-Type: text/plain; charset="UTF-8"

Hello all,

An authentication flaw was found in ceph. When the monitor handles
CEPHX_GET_AUTH_SESSION_KEY requests, it doesn't sanitize other_keys,
allowing key reuse. An attacker who can request a global_id can exploit the
ability of any user to request a global_id previously associated with
another user, as ceph does not force the reuse of old keys to generate new
ones. The highest threat from this vulnerability is to data confidentiality
and integrity as well as system availability.


CVE-2021-20288 has been assigned for this flaw.
Upstream patches:
https://github.com/ceph/ceph/commits/nautilus (commits on top of 14.2.19)
https://github.com/ceph/ceph/commits/octopus (commits on top of 15.2.10)
https://github.com/ceph/ceph/commits/pacific (commits on top of 16.2.0)

The main patches (i.e. ones that actually close the holes) are
"auth/cephx: option to disallow unauthorized global_id (re)use" and
"auth/cephx: ignore CEPH_ENTITY_TYPE_AUTH in requested keys".

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Including the original reporting email below for context, as reported by
Ilya.
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
Hello,

In nautilus+, when the monitor handles CEPHX_GET_AUTH_SESSION_KEY
requests, it doesn't sanitize other_keys.  If other_keys contains
CEPH_ENTITY_TYPE_AUTH, it ends up encoding two auth tickets: the
first (possibly encrypted with the old session key) in response to
CEPHX_GET_AUTH_SESSION_KEY itself [1] and the second in response to
CEPH_ENTITY_TYPE_AUTH in other_keys [2].  The second ticket takes
effect but a) it isn't encrypted with the old session key even if
needed and b) its validity is wrong, namely auth_service_ticket_ttl
instead of auth_mon_ticket_ttl.  Unfortunately our client always sets
CEPH_ENTITY_TYPE_AUTH in other_keys [3].

CEPHX_GET_PRINCIPAL_SESSION_KEY arm has the same issue, but at least
our client doesn't set CEPH_ENTITY_TYPE_AUTH in keys in that case.

Attached is the patch I made.

Trying to assess the security impact, I realized that I don't follow
the outer logic and that there may be another much larger bug lurking
there.  I have always thought that the purpose of encrypting the new
auth ticket with the old session key was to ensure that the client is
authentic (vs someone who just snooped the old ticket when the monitor
shared it with the client or any time the client provided it back to
the monitor as part of requesting service tickets) before allowing
reuse of global_id from the old ticket.  However, after looking at the
code, I'm having doubts because we are very lax about giving out
global_ids: it looks like a client can assign itself any global_id of
its choosing by simply passing something other than 0 in MAuth message
[4,5] or AUTH_REQUEST frame [6,7] and not even bother supplying an old
ticket.  This includes obtaining a global_id currently in use by
another client, which can screw with a lot of things: idempotence
logic, out of order op detection, possibly lock ownerships and anything
else that relies on global_id being a cluster-wide unique id.

I dug into history and found that both the reuse via an old ticket,
the encryption safeguard on the new ticket and the negotiation change
that allowed clients to pass an arbitrary global_id came alongside when
cephx was being implemented in 2009, committed within a couple of days:

  "auth: reuse global_id when requesting tickets" on Nov 17, 2009

https://github.com/ceph/ceph/commit/0669ca21f4f784e450068d8b937b37fb0240b595

  "auth: change server side negotiation a bit" on Nov 18, 2009

https://github.com/ceph/ceph/commit/5eeb711b6b2beb883d903636b05b89e95066c983

  "auth: when renewing session, encrypt ticket" on Nov 19, 2009

https://github.com/ceph/ceph/commit/fec31964a12b82f3d7d3a130b749aee428dbc265

With that negotiation change in place, the whole reuse via an old
ticket scheme together with the encryption safeguard seems rather
meaningless to me.  Am I missing something obvious?

Sage, Yehuda, do you remember the details by any chance?  The commit
messages are empty and neither of the two cephx write-ups we have shed
any light.  In fact, quite the opposite:

  "... If old_ticket is present, verify it is valid, and we
   can reuse the same global_id.  (Otherwise, a new global_id is
   assigned by the monitor.)"

But as it is (and apparently always has been), a new global_id is
assigned only if global_id == 0 in the initial handshake message/frame.
Then, the value from the handshake is potentially overridden by the
value from the old ticket, and if the old ticket isn't present, the
monitor just continues on [8]...

What was (and still is, since this aspect of auth negotiation got
carried over to msgr2) the use case for allowing a client to provide
a global_id in the initial handshake message/frame?

Should a client be allowed to assume the provided global_id if it
doesn't follow through with a ticket proving previous possession of
that global_id?

[1]
https://github.com/ceph/ceph/blob/08af21c9c0c3c5b391a60d13140c0af414146bb8/src/auth/cephx/CephxServiceHandler.cc#L148-L176
[2]
https://github.com/ceph/ceph/blob/08af21c9c0c3c5b391a60d13140c0af414146bb8/src/auth/cephx/CephxServiceHandler.cc#L211-L232
[3]
https://github.com/ceph/ceph/blob/08af21c9c0c3c5b391a60d13140c0af414146bb8/src/auth/cephx/CephxClientHandler.cc#L78
[4]
https://github.com/ceph/ceph/blob/08af21c9c0c3c5b391a60d13140c0af414146bb8/src/mon/AuthMonitor.cc#L628
[5]
https://github.com/ceph/ceph/blob/08af21c9c0c3c5b391a60d13140c0af414146bb8/src/mon/AuthMonitor.cc#L711-L712
[6]
https://github.com/ceph/ceph/blob/08af21c9c0c3c5b391a60d13140c0af414146bb8/src/mon/Monitor.cc#L6326
[7]
https://github.com/ceph/ceph/blob/08af21c9c0c3c5b391a60d13140c0af414146bb8/src/mon/Monitor.cc#L6356-L6357
[8]
https://github.com/ceph/ceph/blob/08af21c9c0c3c5b391a60d13140c0af414146bb8/src/auth/cephx/CephxServiceHandler.cc#L138-L144


Ana McTaggart

Red Hat Product Security

Red Hat Remote <https://www.redhat.com>


secalert@redhat.com for urgent response


amct@redhat.com


M: +1 (774)279-0791 <7742790791>     IM: amctagga


Pronouns:They/Them/Theirs

--0000000000005d848f05bff1fdd9--

