var builder = WebApplication.CreateBuilder(args);

// ## register Controllers
builder.Services.AddControllers();

// Add services to the container.
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

// ## Create Cors policies for dev and prod 

builder.Services.AddCors(options =>
{
    // ## Allow local standard react port for developement
    options.AddPolicy("DevCors", (corsBuilder) =>
    {
        corsBuilder.WithOrigins("http://localhost:3000")
        .AllowAnyMethod()
        .AllowAnyHeader()
        .AllowCredentials();
    });

    // ## Allow public Url

    options.AddPolicy("ProdCors", (corsBuilder) =>
    {
        corsBuilder.WithOrigins("https://MyProductionSite.com")
        .AllowAnyMethod()
        .AllowAnyHeader()
        .AllowCredentials();
    });
});

var app = builder.Build();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseCors("DevCors");
    app.UseSwagger();
    app.UseSwaggerUI();
}

// ## Move redirect to !dev only
else
{
    app.UseCors("ProdCors");
    app.UseHttpsRedirection();
}

// ## add mapping for custom Controllers
app.MapControllers();

app.Run();


