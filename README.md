<p align="center"><a href="#"><img src="https://user-images.githubusercontent.com/48920263/206923090-3f3d29c7-2291-402a-b05b-2ea306ffc861.png" draggable="false" ondragstart="return false;" alt="Norflow Title" title="Norflow" /></a></p>

[Apple shortcuts][apple-shortcuts] provide a quick way to get things done with
your apps, with just a tap or by asking Siri. The Shortcuts app lets you create
your own shortcuts with multiple steps; you can automate a wide variety of
things such as getting directions to the next event on your Calendar,
moving text from one app to another and more. The so-called problem is that
every time the app is opened it creates an empty Shortcuts folder in iCloud
Drive which apparently is useless, and deleting it doesn't cause any errors.
This simple utility was created for one thing only, delete the folder…

<p align="center"><a href="#"><img src="https://user-images.githubusercontent.com/48920263/206924390-28b0a32c-2321-4d13-9bdf-1699747a9f96.png" draggable="false" ondragstart="return false;" alt="Shortcuts folder in Finder" title="Shortcuts folder in Finder" width="590px" /></a></p>

## Getting Started

### Installation

Download the repository via curl:

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/nicolodiamante/norflow/HEAD/bootstrap.sh)"
```

Alternatively, clone manually:

```shell
git clone https://github.com/nicolodiamante/norflow.git
```

Head over into the repository, then:

```shell
cd utils && source install.sh
```

The script will make a copy of the agent files into `~/Library/LaunchAgents`.
<br/><br/>

### How It Works

The agent will launch the script every 300 seconds (5 minutes). The script will
look for the Shortcuts folder in iCloud Drive, if found, check whether the
folder is empty or not and if it is, then will remove it.<br/><br/>

## Notes
### Resources

- [Shortcuts User Guide][apple-guide]

### Contribution

Please report any issues or bugs to the [issues page][issues]. Suggestions for
improvements are welcome!<br/><br/>

<p align="center"><a href="#"><img src="https://user-images.githubusercontent.com/48920263/113406768-5a164900-93ac-11eb-94a7-09377a52bf53.png" draggable="false" ondragstart="return false;" /></a></p>

<p align="center"><a href="https://github.com/nicolodiamante" target="_blank"><img src="https://user-images.githubusercontent.com/48920263/113433823-31a84200-93e0-11eb-9ffb-9111b389ef2f.png" draggable="false" ondragstart="return false;" alt="Nicol&#242; Diamante Portfolio" title="Nicol&#242; Diamante" width="11px" /></a></p>

<p align="center"><a href="https://github.com/nicolodiamante/norflow/blob/main/LICENSE.md" target="_blank"><img src="https://user-images.githubusercontent.com/48920263/110947109-06ca5100-8340-11eb-99cf-8d245044b8a3.png" draggable="false" ondragstart="return false;" alt="The MIT License" title="The MIT License (MIT)" width="90px" /></a></p>

<!-- Link labels: -->
[apple-shortcuts]: https://support.apple.com/en-gb/guide/shortcuts/welcome/ios
[apple-guide]: https://support.apple.com/en-gb/guide/shortcuts/apdf22b0444c/6.0/ios/16.0
[issues]: https://github.com/nicolodiamante/norflow/issues
