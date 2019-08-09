X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3445" "Friday" "9" "August" "2019" "15:08:02" "+0200" "Frederic Branczyk" "fbranczy@redhat.com" "<CA+xoJc+BwZMY2AFo2zDDE1Lpgi+bH07K0qo=vC8SZ5nwLxSZMA@mail.gmail.com>" "92" "[oss-security] [ANNOUNCE] Security release of kube-state-metrics v1.7.2" nil nil nil "8" "2019080913:08:02" "[oss-security] [ANNOUNCE] Security release of kube-state-metrics v1.7.2" (number mark "U       fbranczy@red Aug  9   92/3445  " thread-indent "\"[oss-security] [ANNOUNCE] Security release of kube-state-metrics v1.7.2\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [ANNOUNCE] Security release of kube-state-metrics v1.7.2" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1768 invoked by uid 550); 9 Aug 2019 13:11:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 32475 invoked from network); 9 Aug 2019 13:08:25 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=u52etcd1+miEoOZEPPIq8VVAYPbMCiYtOoc+swkoAcI=;
        b=jj9YPNBXbW4cNfXG3a+Vqqs0084hzCY6VHWhzN5cYNWaDaX6F2bsXqMC1PfRRiXYyu
         GSHlYeYmZwTgIrA/+pn+ey4K0P4v9YkVIlBJKV77bU1U6VHB/OygjPJnBoLXHEF2OPMU
         NSo+04AxpCK4AhWAGGhedW0K61Zm6buFRZjVGNUX3ujE73h/ysPV1xiMXtsUkY3RNftq
         2gqZJMMROrsAfz35QgAItiO7O/DI4/Z8TEhQV8j7xXidO+gRxoDkFocIlPtMsx0uWYYe
         lnc+nlAHn27yiw93n+88n9rdosUn00TDVZDBQ/dHeGWgZ/7zpAdUWHT3MNL9oJkeyfxe
         xJ4g==
X-Gm-Message-State: APjAAAXS8idY/Q44ZdDCY33gPwtV5EsQhphM3/Qzd7Ng4dO13UuKQiBF
	bn4N2fCZLIsDblOaPxvjxgeWIx+WEyvDGg0ecX4R4A==
X-Google-Smtp-Source: APXvYqxd6C6o1QcLM/5RTNP34RH55S/MZZ4eTue2Qnu3xxl4OHAgcQjF8G90GTcqUasJgxf0XOsGN1ITdLPVLh8/hmk=
X-Received: by 2002:a05:6808:98:: with SMTP id s24mr6263669oic.127.1565356093141;
 Fri, 09 Aug 2019 06:08:13 -0700 (PDT)
MIME-Version: 1.0
From: Frederic Branczyk <fbranczy@redhat.com>
Date: Fri, 9 Aug 2019 15:08:02 +0200
Message-ID: <CA+xoJc+BwZMY2AFo2zDDE1Lpgi+bH07K0qo=vC8SZ5nwLxSZMA@mail.gmail.com>
To: kubernetes-dev@googlegroups.com, 
	kubernetes-security-announce@googlegroups.com, 
	kubernetes-security-discuss@googlegroups.com, oss-security@lists.openwall.com
Content-Type: multipart/alternative; boundary="000000000000e11294058faedd83"
Subject: [oss-security] [ANNOUNCE] Security release of kube-state-metrics v1.7.2

--000000000000e11294058faedd83
Content-Type: text/plain; charset="UTF-8"

Hello Kubernetes Community-

A security issue was discovered in the v1.7.0 and v1.7.1 versions of
kube-state-metrics [1]. The issue is of Medium severity level and upgrading
to the latest release v1.7.2 [2] of kube-state-metrics is highly encouraged
to fix this issue, as well as deleting the time-series data that could
potentially disclose secret information.


*Am I vulnerable?*
If you are using the kube-state-metrics versions v1.7.0 or v1.7.1, you are
running a vulnerable version. To find out which version you are running,
you can verify the image tag of your kube-state-metrics deployment.

The following commands should give you the deployed image tag. (Please note
that this may vary depending on which namespace kube-state-metrics is
deployed in and the deployment name itself):

```
kubectl get deployment -n kube-system kube-state-metrics -o yaml | grep
image:
```


*How do I mitigate the vulnerability?*
Update the image of kube-state-metrics to `
quay.io/coreos/kube-state-metrics:v1.7.2`.

If you are unable to upgrade to the latest version of kube-state-metrics,
you can filter out all of the annotation metrics by passing the following
flag to `kube-state-metrics`:

```
--metric-blacklist="kube_.*_annotations"
```

Make sure to delete all the time series data from Prometheus as well, below
is an example command. (Note that this will only work from Prometheus v2.1
onward. More details on time series data deletion can be found in the
Prometheus docs [3])

```
# This command deletes all of the annotation metrics emitted by
kube-state-metrics
curl -X POST -g '
http://localhost:9090/api/v1/admin/tsdb/delete_series?match[]={__name__=~
"kube_.+_annotations"}'
```

This requires the Admin APIs to be enabled. Start Prometheus with the
`--web.enable-admin-api` flag to do so.
Please remember that the delete API only marks the time-series data for
deletion. The actual removal happens during the next compaction process. To
trigger this, the clean tombstones API can be used:

```
curl -X POST http://localhost:9090/api/v1/admin/tsdb/clean_tombstones
```


*Vulnerability Details*
An experimental feature was added to the v1.7.0 release that enabled
annotations to be exposed as metrics. By default, the kube-state-metrics
metrics only expose metadata about Secrets. However, a combination of the
default `kubectl` behavior and this new feature can cause the entire secret
content to end up in metric labels thus inadvertently exposing the secret
content in metrics.

We are not aware of other annotations that disclose information in the same
way, but as a precaution we have reverted the feature and will think more
thoroughly about the implications should we ever introduce something like
it again.

This feature has been reverted and released as the v1.7.2 release. If you
are running the v1.7.0 or v1.7.1 release, please upgrade to the v1.7.2
release as soon as possible.

Thank you to Moritz S. for reporting this issue! Also thank you to Tariq
Ibrahim, Frederic Branczyk and Lili Cosic for the coordination in making
the fix and release.

Thank you for your understanding,
kube-state-metrics maintainers

[1] https://github.com/kubernetes/kube-state-metrics
[2] https://github.com/kubernetes/kube-state-metrics/releases/tag/v1.7.2
[3] https://prometheus.io/docs/prometheus/latest/querying/api/#delete-series

--000000000000e11294058faedd83--
