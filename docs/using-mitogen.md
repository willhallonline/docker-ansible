# Mitogen

[Mitogen (official docs)](https://mitogen.networkgenomics.com/ansible_detailed.html):

> Mitogen for Ansible is a completely redesigned UNIX connection layer and module runtime for Ansible. Requiring minimal configuration changes, it updates Ansible’s slow and wasteful shell-centric implementation with pure-Python equivalents, invoked via highly efficient remote procedure calls to persistent interpreters tunnelled over SSH. No changes are required to target hosts.

Overall, I have used Mitogen to significantly accelerate the rollout of Ansible playbooks. This is a reference for how to use it.

### Using Mitogen

All installs include Mitogen mainly due to the performance improvements that Mitogen awards you. You can read more about it inside the [Mitogen for Ansible documentation](https://mitogen.readthedocs.io/en/stable/ansible.html). To leverage *Mitogen- to accelerate your playbook runs, add this to your ```ansible.cfg```:

Please investigate in your container the location of `ansible_mitogen` (it is different per container). You can do this via:

```bash
your_container="ansible:latest"
docker run --rm -it "willhallonline/${your_container}" /bin/sh -c "find / -type d | grep 'ansible_mitogen/plugins' | sort | head -n 1"
```

and then configuring your own ansible.cfg like:

```ini
[defaults]
strategy_plugins = /usr/local/lib/python3.{python-version}/site-packages/ansible_mitogen/plugins/
strategy = mitogen_linear
```
