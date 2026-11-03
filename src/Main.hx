import ashui.app.WindowedApp;
import ashui.components.Button;
import ashui.reactive.Reactive;

class Main {
	static function main() {
		WindowedApp.run({title: "ashui-template", width: 800, height: 600}, () -> {
			var count = signal(0);
			return <div widthPercent={1} heightPercent={1} class="flex flex-col items-center justify-center gap-4 p-6 bg-background text-text-primary">
				<text class="text-2xl font-semibold">Hello, Ashui!</text>
				<button onClick={_ -> count.set(count.get() + 1)}>Clicked ${count.get()} times</button>
			</div>;
		});
	}
}
