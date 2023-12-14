const port = parseInt(Deno.env.get("PORT") ?? "8000");

function hello_world(_req: Request): Response {
    return new Response("Hello, world!");
}

Deno.serve({port: port}, hello_world);
