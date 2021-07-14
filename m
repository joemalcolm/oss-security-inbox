X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["24658" "Wednesday" "14" "July" "2021" "14:27:43" "-0700" "CJ Cullen" "cjcullen@google.com" nil "395" "[oss-security] [kubernetes] CVE-2021-25740: Endpoint & EndpointSlice permissions allow cross-Namespace forwarding" nil nil nil "7" nil nil (number mark "U       cjcullen@goo Jul 14  395/24658 " thread-indent "\"[oss-security] [kubernetes] CVE-2021-25740: Endpoint & EndpointSlice permissions allow cross-Namespace forwarding\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [kubernetes] CVE-2021-25740: Endpoint & EndpointSlice permissions allow cross-Namespace forwarding" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 9687 invoked by uid 550); 14 Jul 2021 22:24:30 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 8014 invoked from network); 14 Jul 2021 21:28:09 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=T1abFNaqlPDCWwM2lJ0lX8N+wsxLfQCd8PeDuseTIEY=;
        b=jSP8CIFYzfThXCHqg0+/jteMsFQlv+ETI9suqwCWbLq7JLgQsEiymIWIbV6a40O3sI
         BIW6O4Ws6KJgdkqqVDrrsL34eaC/cI1zaWV6Sf6oWInRqFuuO/hUFprCPRgY62Vdwh+B
         9mMRxenNHWykdNsm9DoT06Bq7rbg5SAMiLr6tIQW4xbEjrXx2DsFWVvJPY0Rcdi8WHMQ
         YAoONzGpMlZEy4ys9uJKcCFqSO3xPsjSYxv/jJSlb0dJHGskPQL1r68YOgweY9jg5JPe
         qUm1U+y3fqJtOE+xHzbRf0iTWdF4/tz1yvhzWvv+jLh5IbeyVh2nTx6YQNP1iTlRhVBP
         d7nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=T1abFNaqlPDCWwM2lJ0lX8N+wsxLfQCd8PeDuseTIEY=;
        b=K9egwdZdhTfJmb6CaqvigIY6CP/qa6pWi13WWVjlnQvARgIXQRGvf2MEHcxdKM5764
         M/QRHYUXXIAdT6vTJcz2vJWNr7VBM5KA0lUNWFE3V0Bm2MB/V+AqiBZ1ZPVRt8/b9cC8
         p7QID/ahP+xv7X4ssAm6nFmKy81SSzlf4bNYIOOshz/HLvnypMM3nxxREx5V24lG/Pth
         udnyEoOxYCNnAPZ6UkaIMFJqDp2deBm8y8xzN86oyioTEFD+Wyk2l7pHqBQXgz7QhzQ1
         UpSyTmrlXypQg0kMlEUyFbY4Vu2DFSpDa4CqLtfAgG2xp7M0rXq9pZWgC361PZSr80/n
         hqRA==
X-Gm-Message-State: AOAM532FWEPm2o35XBtBSQ48ebwI9SNQxJtZC6Fv84Te+Jnxlqy6Rul9
	vBmHUiSlEDY4ESMdwydyKRl5/adb5wRdLs2akW+9IfO1Y3E=
X-Google-Smtp-Source: ABdhPJx5JFTNxhWAQMLMAgwvLWrztbdD3hmyUrACOetzn80pDYM6qVgdRiSxFOXHO4YNuZ/6K4Btsm3hhgjqOHgR/3w=
X-Received: by 2002:a25:d310:: with SMTP id e16mr8700ybf.63.1626298074238;
 Wed, 14 Jul 2021 14:27:54 -0700 (PDT)
MIME-Version: 1.0
References: <CABdrxGD=R1RfHKa6q27_yAhnYF9w_MsosEHVga5LDqGh2W3bjw@mail.gmail.com>
In-Reply-To: <CABdrxGD=R1RfHKa6q27_yAhnYF9w_MsosEHVga5LDqGh2W3bjw@mail.gmail.com>
From: CJ Cullen <cjcullen@google.com>
Date: Wed, 14 Jul 2021 14:27:43 -0700
Message-ID: <CABdrxGDe8UB=+AcQUVk87ExyEMmE3MJQ16ON7aGTuRORnbK9iw@mail.gmail.com>
To: oss-security@lists.openwall.com
Content-Type: multipart/mixed; boundary="00000000000004ceab05c71c0759"
Subject: [oss-security] [kubernetes] CVE-2021-25740: Endpoint & EndpointSlice permissions
 allow cross-Namespace forwarding

--00000000000004ceab05c71c0759
Content-Type: multipart/alternative; boundary="00000000000004cea805c71c0755"

--00000000000004cea805c71c0755
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Kubernetes Community,

A security issue was discovered with Kubernetes that could enable users to
send network traffic to locations they would otherwise not have access to
via a confused deputy attack.

This issue has been rated Low severity (
CVSS:3.0/AV:N/AC:H/PR:L/UI:N/S:U/C:L/I:N/A:N
<https://www.first.org/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U=
/C:L/I:N/A:N>),
and assigned CVE-2021-25740.
Am I vulnerable?

If a potential attacker can create or edit Endpoints or EndpointSlices in
the Kubernetes API, they can potentially direct a LoadBalancer or Ingress
implementation to expose backend IPs the attacker should not have access to.

Importantly, if the target=E2=80=99s NetworkPolicy already trusts the Load =
Balancer
or Ingress implementation, NetworkPolicy can not be used to prevent
exposure from other namespaces, potentially bypassing any security controls
such as LoadBalancerSourceRanges.

This issue is a design flaw that cannot be fully mitigated without
user-facing changes. With this public announcement, we can begin
conversations about a long-term fix.
Affected Versions

All Kubernetes versions are affected.
How do I mitigate this vulnerability?

There is no patch for this issue, and it can currently only be mitigated by
restricting access to the vulnerable features. To mitigate the exposure, we
recommend restricting write access to Endpoints and EndpointSlices by
updating the system:aggregate-to-edit role using the attached file. This
will remove write access to Endpoints from the admin and edit roles:

# Allow kubectl auth reconcile to work

kubectl annotate --overwrite clusterrole/system:aggregate-to-edit
rbac.authorization.kubernetes.io/autoupdate=3Dtrue

# Test reconcile, then run for real if happy

kubectl auth reconcile --remove-extra-permissions -f aggregate_to_edit.yaml
--dry-run

kubectl auth reconcile --remove-extra-permissions -f aggregate_to_edit.yaml

# Prevent autoreconciliation back to old state

kubectl annotate --overwrite clusterrole/system:aggregate-to-edit
rbac.authorization.kubernetes.io/autoupdate=3Dfalse

Note: This will prevent new versions of Kubernetes from reconciling new
default permissions to this role. No new default permissions have been
added to this role since v1.14.0, but we recommend you remove the
autoupdate=3Dfalse
annotation as soon as a fix or other mitigation is possible.

For use-cases that need to edit these resources, we recommend creating a
new purpose-built Role with the desired permissions, and using it only for
those cases.
Detection

Services with an empty selector rely on custom endpoints and are vulnerable
to the attack described above. We recommend manually auditing any such
usage. The following kubectl command will list all Services in a cluster
with their selector:

kubectl get svc --all-namespaces -o=3Dcustom-columns=3D'NAME:metadata.name
,NAMESPACE:metadata.namespace,SELECTOR:spec.selector'

Note: Some Services without selectors specified may have their Endpoints
managed by other controllers or tools. For example, endpoints for the
default/kubernetes Service are managed by the Kubernetes API Server.

If you find evidence that this vulnerability has been exploited, please
contact security@kubernetes.io
Additional Advisory

A similar attack is possible using Ingress implementations that support
forwarding to ExternalName Services. This can be used to forward to
Services in other namespaces or, in some cases, sensitive endpoints within
the Ingress implementation. If you are using the Ingress API, we recommend
confirming that the implementation you=E2=80=99re using either does not sup=
port
forwarding to ExternalName Services or supports disabling the functionality.
Additional Details

See the GitHub issue for more updates:
https://github.com/kubernetes/kubernetes/issues/103675



Thank You,

Rob Scott on behalf of Kubernetes SIG Network and CJ Cullen on behalf of
the Kubernetes Product Security Committee

--00000000000004cea805c71c0755
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr"><span id=3D"m_=
-174318033722803972gmail-docs-internal-guid-15c3dab8-7fff-d5de-7753-53680c2=
a23c2"><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-botto=
m:0pt"><span style=3D"font-size:12pt;font-family:Arial;color:rgb(0,0,0);bac=
kground-color:transparent;font-variant-numeric:normal;font-variant-east-asi=
an:normal;vertical-align:baseline;white-space:pre-wrap">Hello Kubernetes Co=
mmunity,</span></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:=
0pt;margin-bottom:0pt"><span style=3D"font-size:12pt;font-family:Arial;colo=
r:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;font-=
variant-east-asian:normal;vertical-align:baseline;white-space:pre-wrap">A s=
ecurity issue was discovered with Kubernetes that could enable users to sen=
d network traffic to locations they would otherwise not have access to via =
a confused deputy attack.=C2=A0</span></p><br><p dir=3D"ltr" style=3D"line-=
height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:12pt=
;font-family:Arial;color:rgb(0,0,0);background-color:transparent;font-varia=
nt-numeric:normal;font-variant-east-asian:normal;vertical-align:baseline;wh=
ite-space:pre-wrap">This issue has been rated </span><span style=3D"font-si=
ze:12pt;font-family:Arial;color:rgb(0,0,0);background-color:transparent;fon=
t-weight:700;font-variant-numeric:normal;font-variant-east-asian:normal;ver=
tical-align:baseline;white-space:pre-wrap">Low</span><span style=3D"font-si=
ze:12pt;font-family:Arial;color:rgb(0,0,0);background-color:transparent;fon=
t-variant-numeric:normal;font-variant-east-asian:normal;vertical-align:base=
line;white-space:pre-wrap"> severity (</span><a href=3D"https://www.first.o=
rg/cvss/calculator/3.1#CVSS:3.1/AV:N/AC:H/PR:L/UI:N/S:U/C:L/I:N/A:N" style=
=3D"text-decoration-line:none" target=3D"_blank"><span style=3D"font-size:1=
2pt;font-family:Arial;background-color:transparent;font-variant-numeric:nor=
mal;font-variant-east-asian:normal;text-decoration-line:underline;vertical-=
align:baseline;white-space:pre-wrap">CVSS:3.0/AV:N/AC:H/PR:L/UI:N/S:U/C:L/I=
:N/A:N</span></a><span style=3D"font-size:12pt;font-family:Arial;color:rgb(=
0,0,0);background-color:transparent;font-variant-numeric:normal;font-varian=
t-east-asian:normal;vertical-align:baseline;white-space:pre-wrap">), and as=
signed </span><span style=3D"font-size:12pt;font-family:Arial;color:rgb(0,0=
,0);background-color:transparent;font-weight:700;font-variant-numeric:norma=
l;font-variant-east-asian:normal;vertical-align:baseline;white-space:pre-wr=
ap">CVE-2021-25740</span><span style=3D"font-size:12pt;font-family:Arial;co=
lor:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;fon=
t-variant-east-asian:normal;vertical-align:baseline;white-space:pre-wrap">.=
</span></p><h3 dir=3D"ltr" style=3D"line-height:1.2;margin-top:18pt;margin-=
bottom:12pt"><span style=3D"font-size:16.5pt;font-family:Arial;color:rgb(36=
,41,46);background-color:transparent;font-variant-numeric:normal;font-varia=
nt-east-asian:normal;vertical-align:baseline;white-space:pre-wrap">Am I vul=
nerable?</span></h3><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:3pt=
;margin-bottom:0pt;padding:0pt 0pt 12pt"><span style=3D"font-size:12pt;font=
-family:Arial;color:rgb(36,41,46);background-color:transparent;font-variant=
-numeric:normal;font-variant-east-asian:normal;vertical-align:baseline;whit=
e-space:pre-wrap">If a potential attacker can create or edit Endpoints or E=
ndpointSlices in the Kubernetes API, they can potentially direct a LoadBala=
ncer or Ingress implementation to expose backend IPs the attacker should no=
t have access to.</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin=
-top:0pt;margin-bottom:0pt"><span style=3D"font-size:12pt;font-family:Arial=
;color:rgb(36,41,46);background-color:transparent;font-variant-numeric:norm=
al;font-variant-east-asian:normal;vertical-align:baseline;white-space:pre-w=
rap">Importantly, if the target=E2=80=99s NetworkPolicy already trusts the =
Load Balancer or Ingress implementation, NetworkPolicy can not be used to p=
revent exposure from other namespaces, potentially bypassing any security c=
ontrols such as LoadBalancerSourceRanges.</span></p><p dir=3D"ltr" style=3D=
"line-height:1.38;margin-top:0pt;margin-bottom:12pt"><span style=3D"font-si=
ze:12pt;font-family:Arial;color:rgb(36,41,46);background-color:transparent;=
font-variant-numeric:normal;font-variant-east-asian:normal;vertical-align:b=
aseline;white-space:pre-wrap">This issue is a design flaw that cannot be fu=
lly mitigated without user-facing changes. With this public announcement, w=
e can begin conversations about a long-term fix.</span></p><h4 dir=3D"ltr" =
style=3D"line-height:1.2;margin-top:18pt;margin-bottom:12pt"><span style=3D=
"font-size:12pt;font-family:Arial;color:rgb(36,41,46);background-color:tran=
sparent;font-variant-numeric:normal;font-variant-east-asian:normal;vertical=
-align:baseline;white-space:pre-wrap">Affected Versions</span></h4><p dir=
=3D"ltr" style=3D"line-height:1.2;margin-top:18pt;margin-bottom:12pt"><span=
 style=3D"font-size:12pt;font-family:Arial;color:rgb(0,0,0);background-colo=
r:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;ve=
rtical-align:baseline;white-space:pre-wrap">All Kubernetes versions are aff=
ected.=C2=A0</span></p><h3 dir=3D"ltr" style=3D"line-height:1.2;margin-top:=
18pt;margin-bottom:12pt"><span style=3D"font-size:16.5pt;font-family:Arial;=
color:rgb(36,41,46);background-color:transparent;font-variant-numeric:norma=
l;font-variant-east-asian:normal;vertical-align:baseline;white-space:pre-wr=
ap">How do I mitigate this vulnerability?</span></h3><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-=
size:12pt;font-family:Arial;color:rgb(0,0,0);background-color:transparent;f=
ont-variant-numeric:normal;font-variant-east-asian:normal;vertical-align:ba=
seline;white-space:pre-wrap">There is no patch for this issue, and it can c=
urrently only be mitigated by restricting access to the vulnerable features=
. To mitigate the exposure, we recommend restricting write access to Endpoi=
nts and EndpointSlices by updating the system:aggregate-to-edit role using =
the attached file. This will remove write access to Endpoints from the admi=
n and edit roles:</span></p><br><p dir=3D"ltr" style=3D"line-height:1.38;ma=
rgin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:12pt;color:rgb(0,0=
,0);background-color:transparent;font-variant-numeric:normal;font-variant-e=
ast-asian:normal;vertical-align:baseline;white-space:pre-wrap"><font face=
=3D"monospace"># Allow kubectl auth reconcile to work</font></span></p><p d=
ir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><spa=
n style=3D"font-size:12pt;color:rgb(0,0,0);background-color:transparent;fon=
t-variant-numeric:normal;font-variant-east-asian:normal;vertical-align:base=
line;white-space:pre-wrap"><font face=3D"monospace">kubectl annotate --over=
write clusterrole/system:aggregate-to-edit <a href=3D"http://rbac.authoriza=
tion.kubernetes.io/autoupdate=3Dtrue" target=3D"_blank">rbac.authorization.=
kubernetes.io/autoupdate=3Dtrue</a></font></span></p><font face=3D"monospac=
e"><br></font><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margi=
n-bottom:0pt"><span style=3D"font-size:12pt;color:rgb(0,0,0);background-col=
or:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;v=
ertical-align:baseline;white-space:pre-wrap"><font face=3D"monospace"># Tes=
t reconcile, then run for real if happy</font></span></p><p dir=3D"ltr" sty=
le=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"fon=
t-size:12pt;color:rgb(0,0,0);background-color:transparent;font-variant-nume=
ric:normal;font-variant-east-asian:normal;vertical-align:baseline;white-spa=
ce:pre-wrap"><font face=3D"monospace">kubectl auth reconcile --remove-extra=
-permissions -f aggregate_to_edit.yaml --dry-run</font></span></p><p dir=3D=
"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span sty=
le=3D"font-size:12pt;color:rgb(0,0,0);background-color:transparent;font-var=
iant-numeric:normal;font-variant-east-asian:normal;vertical-align:baseline;=
white-space:pre-wrap"><font face=3D"monospace">kubectl auth reconcile --rem=
ove-extra-permissions -f aggregate_to_edit.yaml</font></span></p><font face=
=3D"monospace"><br></font><p dir=3D"ltr" style=3D"line-height:1.38;margin-t=
op:0pt;margin-bottom:0pt"><span style=3D"font-size:12pt;color:rgb(0,0,0);ba=
ckground-color:transparent;font-variant-numeric:normal;font-variant-east-as=
ian:normal;vertical-align:baseline;white-space:pre-wrap"><font face=3D"mono=
space"># Prevent autoreconciliation back to old state</font></span></p><p d=
ir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><spa=
n style=3D"font-size:12pt;color:rgb(0,0,0);background-color:transparent;fon=
t-variant-numeric:normal;font-variant-east-asian:normal;vertical-align:base=
line;white-space:pre-wrap"><font face=3D"monospace">kubectl annotate --over=
write clusterrole/system:aggregate-to-edit <a href=3D"http://rbac.authoriza=
tion.kubernetes.io/autoupdate=3Dfalse" target=3D"_blank">rbac.authorization=
.kubernetes.io/autoupdate=3Dfalse</a></font></span></p><br><p dir=3D"ltr" s=
tyle=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"f=
ont-size:12pt;font-family:Arial;color:rgb(0,0,0);background-color:transpare=
nt;font-weight:700;font-variant-numeric:normal;font-variant-east-asian:norm=
al;vertical-align:baseline;white-space:pre-wrap">Note:</span><span style=3D=
"font-size:12pt;font-family:Arial;color:rgb(0,0,0);background-color:transpa=
rent;font-variant-numeric:normal;font-variant-east-asian:normal;vertical-al=
ign:baseline;white-space:pre-wrap"> This will prevent new versions of Kuber=
netes from reconciling new default permissions to this role. No new default=
 permissions have been added to this role since v1.14.0, but we recommend y=
ou remove the </span><span style=3D"font-size:12pt;font-family:Consolas,san=
s-serif;color:rgb(0,0,0);background-color:transparent;font-variant-numeric:=
normal;font-variant-east-asian:normal;vertical-align:baseline;white-space:p=
re-wrap">autoupdate=3Dfalse </span><span style=3D"font-size:12pt;font-famil=
y:Arial;color:rgb(0,0,0);background-color:transparent;font-variant-numeric:=
normal;font-variant-east-asian:normal;vertical-align:baseline;white-space:p=
re-wrap">annotation as soon as a fix or other mitigation is possible.</span=
></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bot=
tom:0pt"><span style=3D"font-size:12pt;font-family:Arial;color:rgb(0,0,0);b=
ackground-color:transparent;font-variant-numeric:normal;font-variant-east-a=
sian:normal;vertical-align:baseline;white-space:pre-wrap">For use-cases tha=
t need to edit these resources, we recommend creating a new purpose-built R=
ole with the desired permissions, and using it only for those cases.</span>=
</p><h3 dir=3D"ltr" style=3D"line-height:1.2;margin-top:18pt;margin-bottom:=
12pt"><span style=3D"font-size:16.5pt;font-family:Arial;color:rgb(36,41,46)=
;background-color:transparent;font-variant-numeric:normal;font-variant-east=
-asian:normal;vertical-align:baseline;white-space:pre-wrap">Detection</span=
></h3><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom=
:0pt"><span style=3D"font-size:12pt;font-family:Arial;color:rgb(0,0,0);back=
ground-color:transparent;font-variant-numeric:normal;font-variant-east-asia=
n:normal;vertical-align:baseline;white-space:pre-wrap">Services with an emp=
ty selector rely on custom endpoints and are vulnerable to the attack descr=
ibed above. We recommend manually auditing any such usage. The following ku=
bectl command will list all Services in a cluster with their selector:</spa=
n></p><br><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bo=
ttom:0pt"><span style=3D"font-size:12pt;color:rgb(0,0,0);background-color:t=
ransparent;font-variant-numeric:normal;font-variant-east-asian:normal;verti=
cal-align:baseline;white-space:pre-wrap"><font face=3D"monospace">kubectl g=
et svc --all-namespaces -o=3Dcustom-columns=3D&#39;NAME:<a href=3D"http://m=
etadata.name" target=3D"_blank">metadata.name</a>,NAMESPACE:metadata.namesp=
ace,SELECTOR:spec.selector&#39;</font></span></p><br><p dir=3D"ltr" style=
=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-=
size:12pt;font-family:Arial;color:rgb(0,0,0);background-color:transparent;f=
ont-variant-numeric:normal;font-variant-east-asian:normal;vertical-align:ba=
seline;white-space:pre-wrap">Note: Some Services without selectors specifie=
d may have their Endpoints managed by other controllers or tools. For examp=
le, endpoints for the default/kubernetes Service are managed by the Kuberne=
tes API Server.=C2=A0</span></p><br><p dir=3D"ltr" style=3D"line-height:1.3=
8;margin-top:0pt;margin-bottom:0pt"><span style=3D"font-size:12pt;font-fami=
ly:Arial;color:rgb(0,0,0);background-color:transparent;font-variant-numeric=
:normal;font-variant-east-asian:normal;vertical-align:baseline;white-space:=
pre-wrap">If you find evidence that this vulnerability has been exploited, =
please contact </span><a href=3D"mailto:security@kubernetes.io" style=3D"te=
xt-decoration-line:none" target=3D"_blank"><span style=3D"font-size:12pt;fo=
nt-family:Arial;background-color:transparent;font-variant-numeric:normal;fo=
nt-variant-east-asian:normal;text-decoration-line:underline;vertical-align:=
baseline;white-space:pre-wrap">security@kubernetes.io</span></a><span style=
=3D"font-size:12pt;font-family:Arial;color:rgb(0,0,0);background-color:tran=
sparent;font-variant-numeric:normal;font-variant-east-asian:normal;vertical=
-align:baseline;white-space:pre-wrap">=C2=A0</span></p><h4 dir=3D"ltr" styl=
e=3D"line-height:1.2;margin-top:18pt;margin-bottom:12pt"><span style=3D"fon=
t-size:12pt;font-family:Arial;color:rgb(36,41,46);background-color:transpar=
ent;font-variant-numeric:normal;font-variant-east-asian:normal;vertical-ali=
gn:baseline;white-space:pre-wrap">Additional Advisory</span></h4><p dir=3D"=
ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span styl=
e=3D"font-size:12pt;font-family:Arial;color:rgb(0,0,0);background-color:tra=
nsparent;font-variant-numeric:normal;font-variant-east-asian:normal;vertica=
l-align:baseline;white-space:pre-wrap">A similar attack is possible using I=
ngress implementations that support forwarding to ExternalName Services. Th=
is can be used to forward to Services in other namespaces or, in some cases=
, sensitive endpoints within the Ingress implementation. If you are using t=
he Ingress API, we recommend confirming that the implementation you=E2=80=
=99re using either does not support forwarding to ExternalName Services or =
supports disabling the functionality.</span></p><h4 dir=3D"ltr" style=3D"li=
ne-height:1.2;margin-top:18pt;margin-bottom:12pt"><span style=3D"font-size:=
12pt;font-family:Arial;color:rgb(36,41,46);background-color:transparent;fon=
t-variant-numeric:normal;font-variant-east-asian:normal;vertical-align:base=
line;white-space:pre-wrap">Additional Details</span></h4><p dir=3D"ltr" sty=
le=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span style=3D"fon=
t-size:12pt;font-family:Arial;color:rgb(0,0,0);background-color:transparent=
;font-variant-numeric:normal;font-variant-east-asian:normal;vertical-align:=
baseline;white-space:pre-wrap">See the GitHub issue for more updates: </spa=
n><a href=3D"https://github.com/kubernetes/kubernetes/issues/103675" style=
=3D"text-decoration-line:none" target=3D"_blank"><span style=3D"font-size:1=
2pt;font-family:Arial;background-color:transparent;font-variant-numeric:nor=
mal;font-variant-east-asian:normal;text-decoration-line:underline;vertical-=
align:baseline;white-space:pre-wrap">https://github.com/kubernetes/kubernet=
es/issues/103675</span></a><span style=3D"font-size:12pt;font-family:Arial;=
color:rgb(0,0,0);background-color:transparent;font-variant-numeric:normal;f=
ont-variant-east-asian:normal;vertical-align:baseline;white-space:pre-wrap"=
>=C2=A0</span></p><p dir=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;m=
argin-bottom:0pt;padding:0pt 0pt 12pt">=C2=A0</p><p dir=3D"ltr" style=3D"li=
ne-height:1.38;margin-top:0pt;margin-bottom:0pt;padding:0pt 0pt 12pt"><span=
 style=3D"font-size:12pt;font-family:Arial;color:rgb(36,41,46);background-c=
olor:transparent;font-variant-numeric:normal;font-variant-east-asian:normal=
;vertical-align:baseline;white-space:pre-wrap">Thank You,</span></p><p dir=
=3D"ltr" style=3D"line-height:1.38;margin-top:0pt;margin-bottom:0pt"><span =
style=3D"font-size:12pt;font-family:Arial;color:rgb(36,41,46);background-co=
lor:transparent;font-variant-numeric:normal;font-variant-east-asian:normal;=
vertical-align:baseline;white-space:pre-wrap">Rob Scott on behalf of Kubern=
etes SIG Network and CJ Cullen on behalf of the Kubernetes Product Security=
 Committee</span></p></span><br></div>
</div></div>

--00000000000004cea805c71c0755--

--00000000000004ceab05c71c0759
Content-Type: application/x-yaml; name="aggregate_to_edit.yaml"
Content-Disposition: attachment; filename="aggregate_to_edit.yaml"
Content-Transfer-Encoding: base64
Content-ID: <f_kr3zm4e20>
X-Attachment-Id: f_kr3zm4e20

YXBpVmVyc2lvbjogcmJhYy5hdXRob3JpemF0aW9uLms4cy5pby92MQpraW5k
OiBDbHVzdGVyUm9sZQptZXRhZGF0YToKICBhbm5vdGF0aW9uczoKICAgIHJi
YWMuYXV0aG9yaXphdGlvbi5rdWJlcm5ldGVzLmlvL2F1dG91cGRhdGU6ICJ0
cnVlIgogIGNyZWF0aW9uVGltZXN0YW1wOiBudWxsCiAgbGFiZWxzOgogICAg
a3ViZXJuZXRlcy5pby9ib290c3RyYXBwaW5nOiByYmFjLWRlZmF1bHRzCiAg
ICByYmFjLmF1dGhvcml6YXRpb24uazhzLmlvL2FnZ3JlZ2F0ZS10by1lZGl0
OiAidHJ1ZSIKICBuYW1lOiBzeXN0ZW06YWdncmVnYXRlLXRvLWVkaXQKcnVs
ZXM6Ci0gYXBpR3JvdXBzOgogIC0gIiIKICByZXNvdXJjZXM6CiAgLSBwb2Rz
L2F0dGFjaAogIC0gcG9kcy9leGVjCiAgLSBwb2RzL3BvcnRmb3J3YXJkCiAg
LSBwb2RzL3Byb3h5CiAgLSBzZWNyZXRzCiAgLSBzZXJ2aWNlcy9wcm94eQog
IHZlcmJzOgogIC0gZ2V0CiAgLSBsaXN0CiAgLSB3YXRjaAotIGFwaUdyb3Vw
czoKICAtICIiCiAgcmVzb3VyY2VzOgogIC0gc2VydmljZWFjY291bnRzCiAg
dmVyYnM6CiAgLSBpbXBlcnNvbmF0ZQotIGFwaUdyb3VwczoKICAtICIiCiAg
cmVzb3VyY2VzOgogIC0gcG9kcwogIC0gcG9kcy9hdHRhY2gKICAtIHBvZHMv
ZXhlYwogIC0gcG9kcy9wb3J0Zm9yd2FyZAogIC0gcG9kcy9wcm94eQogIHZl
cmJzOgogIC0gY3JlYXRlCiAgLSBkZWxldGUKICAtIGRlbGV0ZWNvbGxlY3Rp
b24KICAtIHBhdGNoCiAgLSB1cGRhdGUKLSBhcGlHcm91cHM6CiAgLSAiIgog
IHJlc291cmNlczoKICAtIGNvbmZpZ21hcHMKICAtIHBlcnNpc3RlbnR2b2x1
bWVjbGFpbXMKICAtIHJlcGxpY2F0aW9uY29udHJvbGxlcnMKICAtIHJlcGxp
Y2F0aW9uY29udHJvbGxlcnMvc2NhbGUKICAtIHNlY3JldHMKICAtIHNlcnZp
Y2VhY2NvdW50cwogIC0gc2VydmljZXMKICAtIHNlcnZpY2VzL3Byb3h5CiAg
dmVyYnM6CiAgLSBjcmVhdGUKICAtIGRlbGV0ZQogIC0gZGVsZXRlY29sbGVj
dGlvbgogIC0gcGF0Y2gKICAtIHVwZGF0ZQotIGFwaUdyb3VwczoKICAtIGFw
cHMKICByZXNvdXJjZXM6CiAgLSBkYWVtb25zZXRzCiAgLSBkZXBsb3ltZW50
cwogIC0gZGVwbG95bWVudHMvcm9sbGJhY2sKICAtIGRlcGxveW1lbnRzL3Nj
YWxlCiAgLSByZXBsaWNhc2V0cwogIC0gcmVwbGljYXNldHMvc2NhbGUKICAt
IHN0YXRlZnVsc2V0cwogIC0gc3RhdGVmdWxzZXRzL3NjYWxlCiAgdmVyYnM6
CiAgLSBjcmVhdGUKICAtIGRlbGV0ZQogIC0gZGVsZXRlY29sbGVjdGlvbgog
IC0gcGF0Y2gKICAtIHVwZGF0ZQotIGFwaUdyb3VwczoKICAtIGF1dG9zY2Fs
aW5nCiAgcmVzb3VyY2VzOgogIC0gaG9yaXpvbnRhbHBvZGF1dG9zY2FsZXJz
CiAgdmVyYnM6CiAgLSBjcmVhdGUKICAtIGRlbGV0ZQogIC0gZGVsZXRlY29s
bGVjdGlvbgogIC0gcGF0Y2gKICAtIHVwZGF0ZQotIGFwaUdyb3VwczoKICAt
IGJhdGNoCiAgcmVzb3VyY2VzOgogIC0gY3JvbmpvYnMKICAtIGpvYnMKICB2
ZXJiczoKICAtIGNyZWF0ZQogIC0gZGVsZXRlCiAgLSBkZWxldGVjb2xsZWN0
aW9uCiAgLSBwYXRjaAogIC0gdXBkYXRlCi0gYXBpR3JvdXBzOgogIC0gZXh0
ZW5zaW9ucwogIHJlc291cmNlczoKICAtIGRhZW1vbnNldHMKICAtIGRlcGxv
eW1lbnRzCiAgLSBkZXBsb3ltZW50cy9yb2xsYmFjawogIC0gZGVwbG95bWVu
dHMvc2NhbGUKICAtIGluZ3Jlc3NlcwogIC0gbmV0d29ya3BvbGljaWVzCiAg
LSByZXBsaWNhc2V0cwogIC0gcmVwbGljYXNldHMvc2NhbGUKICAtIHJlcGxp
Y2F0aW9uY29udHJvbGxlcnMvc2NhbGUKICB2ZXJiczoKICAtIGNyZWF0ZQog
IC0gZGVsZXRlCiAgLSBkZWxldGVjb2xsZWN0aW9uCiAgLSBwYXRjaAogIC0g
dXBkYXRlCi0gYXBpR3JvdXBzOgogIC0gcG9saWN5CiAgcmVzb3VyY2VzOgog
IC0gcG9kZGlzcnVwdGlvbmJ1ZGdldHMKICB2ZXJiczoKICAtIGNyZWF0ZQog
IC0gZGVsZXRlCiAgLSBkZWxldGVjb2xsZWN0aW9uCiAgLSBwYXRjaAogIC0g
dXBkYXRlCi0gYXBpR3JvdXBzOgogIC0gbmV0d29ya2luZy5rOHMuaW8KICBy
ZXNvdXJjZXM6CiAgLSBpbmdyZXNzZXMKICAtIG5ldHdvcmtwb2xpY2llcwog
IHZlcmJzOgogIC0gY3JlYXRlCiAgLSBkZWxldGUKICAtIGRlbGV0ZWNvbGxl
Y3Rpb24KICAtIHBhdGNoCiAgLSB1cGRhdGUK

--00000000000004ceab05c71c0759--
